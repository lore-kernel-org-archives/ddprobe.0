Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1022F3112BC
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774124094; cv=none; b=OXT2u7SG6bIuiC63+RhhYPcrfupsnaUD0DGeGjG3vUOMV9vHHMVBPt3doTl+to6Ffos+QkIuKt/rxvKVrX9Lp6QBECDfYukiJLr3kMLkiqwlTJ0hJaCTvbtJ8BJ9CvHwMOtQBDQvO8+QqqvO9GchpYhWOAIoBIMG/Ebnqh79BGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774124094; c=relaxed/simple;
	bh=BeytyOvNTSwCRqvwK8CCKvrP82v32RlQp2nr2hY6azU=;
	h=To:Subject:From:Message-Id:Date; b=iftioGq5JOG8X3r4jqBEQ5ffGmPDEM9h2cl1s8N1FozJ0ZSk5dN4DrYa7fZpmyjwJnUu5gJBGFbOLnKuKFHmTvlhNmI+EKfn/tnzXF87mdSJy12Gtm/DJYYJNFzxoa387eQVQzXCu3L/yq5rNw370cWq7CG81sGUFXKR3feBwTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6Zdm6p+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6Zdm6p+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF60C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774124093;
	bh=BeytyOvNTSwCRqvwK8CCKvrP82v32RlQp2nr2hY6azU=;
	h=To:Subject:From:Date:From;
	b=q6Zdm6p+2H+fqauGQQ7tqbFrGm1YLRbWz6HGad5gW63CWlsgzT+hUUB59D5nF6IjF
	 O+H3/EeMaiND7cLLvWSuYvYcLl6LefH/mtPhcTwfEmkbSv9OChof7vfh2Uxx5ASH9L
	 DxW4LtzXvQlcTsqEDT78h5Wp/rFNIhqejDc6zoJEXRYCuoXIxGx4iy0GoyaGxfgUxP
	 NyuA+lVaWgff84Qqethqf+ofmiz0+pprBoRDz2WdhiZgz/xOW3yfUMFfOJmh3Mtwd9
	 EHegk+qFpNE+qGqpNKtqm9v1WxUQvnRnBDSahqojr1/nEP3z4Vc9reUoKhnJOCdM/H
	 SppRID+UWGR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E38F1094499
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412409357.18732.10127691298488840889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131aae9039d19119c0370065a9b9c6aaa866ce964b75ad8c465b579c696ba421
Date: Sat, 21 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774124093
