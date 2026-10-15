Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FCB4A1DE0
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792050034; cv=none; b=qyQl3mVcXLTOjw7hIgezCpvA5Z/pGcUmhhf+b/17muKI2wVUI5+kY4B79iLp2Eyaib0Kizz4+fGxDbyvCxEPlKdqBur5pJAzFYWUqJbDZRgAyB0Nn9KeZ3yMOUC/yFiG64tux6rCFnxj23mQME/lBt631piQOXr8TH4q5YxxjbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792050034; c=relaxed/simple;
	bh=hhl9HVhgnlkXOG53Jdc5U2+jqmh9y8G2pseBRqD6mgo=;
	h=To:Subject:From:Message-Id:Date; b=Cypd/7VdzQydrqz5R4iVHDtWcFsU9Zez6cKeIxLH6qD3ysepeAEI4GHcafXbGqdPNMNNSNzJ7CA/7nRTKoMX+q+3fZrej5aLleB30/An/LRMDcLeeVXqLbk6OEb4MQ4g6rQlxzsNMgEuVyEnq+zwtCiWdl9eR0T4O/VWRd1V2Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxNtpecK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxNtpecK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5CAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792050033;
	bh=hhl9HVhgnlkXOG53Jdc5U2+jqmh9y8G2pseBRqD6mgo=;
	h=To:Subject:From:Date:From;
	b=OxNtpecKSunaz4qQW9Sa6CNI7xHP2jTwTQc/HzqUwp7zdset647YihUsRg2B/9ZYe
	 Ve24WocoVabPbrAAy4u7PYLlHgll6LTDzBzBl7jdQvlisUOgR73gNBYPai7f6BOlza
	 BG/I3N+KNDoDYc+KkQ9HVn3ce9brobSP22yccJGfa47Z5VzZmWxfDxOX0cAA9ZPg9U
	 9UKS9WGlw8G1Hw1HkXG+bg7AmDZbPMn60c2J+eCWiR7r+ucNcnliCLa5K2+G6Nm0Gv
	 aY8hedtbV81R+1VoHW4cEbVbWk7z9Endv3oPjxe6TNjEKEUDuSP+TPqJleoUs26ttC
	 jSkeYg2G4fjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB896CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205003369.30204.4246710441123899357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53301ec772fc7e579485cf1cb42f00f1568bfe64ddc81a623a21ab9bfc047257
Date: Thu, 15 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792050033
