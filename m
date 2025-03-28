Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FF612C7FD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743154793; cv=none; b=Wb1KqhOpp7eN9N3HAgEXbak7uqPujj19VJUF2jybuUKQxqA3QXqkzMS5zw2yo3HTSZb9n6bsHtRNJRbKwgz4n4Z4cyzCDG1AT4IrJgT4ejZXUakjxfc/6QZjfKsuZhh00D9oDm//u8Wk+W1zCOnVObOyuCMUN0al4pWCt4hRbuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743154793; c=relaxed/simple;
	bh=bYfNAaQ6A41uyUiZEuE1Q2fBlAd0OVaUJtqEZ6u3Kbg=;
	h=To:Subject:From:Message-Id:Date; b=UkYgeQDEzH3xvEAbmf6yLBdujlkO2zAPBJEEh0E+MCJ9mgiu+ekFDpCnm+GUHs/m7kvkWPNdquW4R+F/PZEK3aCby3bLkEAG/HbT/9jhOYvNnslWvndEbdHewWRThk0SyLQLa1KNygLFHaOkH71DhVv74m1zaonV6fJZW63OmJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6q8SQ8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6q8SQ8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB619C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743154793;
	bh=bYfNAaQ6A41uyUiZEuE1Q2fBlAd0OVaUJtqEZ6u3Kbg=;
	h=To:Subject:From:Date:From;
	b=R6q8SQ8RDsvNCdzL314ngWHzslre6E4ZYQUAF5JDMvUClOl+xPlbxC2xqKGXY3FxN
	 lh4a9+LSuQeDu6Otx5G1tk6p5pbj7dWOfh0HVMqkMoL7jDbJUxpPE7/VVL5bt7UBIX
	 iX6/emgoCGtsw1tBc6dcDEyZ3bxUJjg/WR0W/ZqjdxGcyn5/NQs+49OtL8Ct5cMML3
	 7vV/LU3mesCxKbaHOEGthWiZ9A7V2nbE1VempgV30sIUdvh3peLqVGDZsiw+GDJ79g
	 UmzK+F7ZgpJXlkEm9LDz1YAokVNmtmBLgeBEFUVnBKWfXHquXiamqpPkN9NKdnjlly
	 iT62RqrbXjm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A95C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315479361.7125.10443807623996889898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4880e1af1a2bc6683ef8fe2500d55614060a65b069569c912b131d1216e779ab
Date: Fri, 28 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743154793
