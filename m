Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1211CA1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721217923; cv=none; b=s2dKXsytUlI1uF2eiXecnu51sa3TAQ2fSofOdsR1MjvfhhIigsI6gZKwN5iiHYVk98PEwyYPwFMwGpEns+96oGNKh1iv3gaiOyYdZeNOHTgJLQ3bY8YuIp6Cguuq8jrz+m7cyOlKH+ArtVBkXW+S1+j597gPK3GLb3oNLJOg2+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721217923; c=relaxed/simple;
	bh=8lsZtiSOH3aK68nqxV84VMuYAqb7fb9/LuF4Ufjh2WE=;
	h=To:Subject:From:Message-Id:Date; b=qDktg4R/7Uw26HIDULfKawuPhblkr3cOKSrEZkpg1L3hKRS9Y5b4fYb56EgdlJjwVKBp7Suzys4KTuzpXyOkrveRuWEMFdY3r3ZG4qoT2Nhmns2d0rC2gzcLvKKiJew4OjDUloxKYJ6i5JjlWu15mGffxCJHT7TKbrdkDBrUgOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbnwI47R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbnwI47R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A35C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721217922;
	bh=8lsZtiSOH3aK68nqxV84VMuYAqb7fb9/LuF4Ufjh2WE=;
	h=To:Subject:From:Date:From;
	b=MbnwI47RfaPOy2YiNhrKLJgd85XcfioGDQlcsD35JTHKb8SkXSOF7qBRSYsck+4uH
	 Imq+y9SWu54ZLjkFfXwIEdshW2GYSd4hjJPcBBEa+JQGKTW27oQmLUzKApGw1S/R7b
	 t0xtTdAG+J9ZPHRxWAgMIsjYWBZ1X5wZc5PlBh9X05Qwa24EZjNkw3tLqv6gqX5Br1
	 Clwr4W3Y7h1Xpmnlc8UbGEFlSs3vTa0jUtXAvLcXnIO9X3qHz6Z7bnJCZnMRf5Zxdn
	 pVOqv39ZMcgsfLoKOWyVkp3d9V5Pn3xUvsoSKQa9eV9o6ina8+iyxr2BjWL4rn6vkg
	 E0MnItwwTwXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EF6C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121792278.30187.206510727976311406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3d2e37e069167825fbb745b45741e142b7ad400f027139e0e51e95adf1f429
Date: Wed, 17 Jul 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721217922
