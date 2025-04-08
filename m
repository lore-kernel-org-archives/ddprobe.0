Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FE314AD2D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744144793; cv=none; b=JZY2egKd7E3dijFJBgyfaxhzukXiMuP7N4jdEezxOcVSRarfPtDGOSRF04hVvDgeMlmCr22USK1U1/kqdyODDD+JogJHeSYme9q8Wgp+9uJYJaiBrTanm29cUWl7OyYsT5m/5QiFRo4/QDIsG+zv4NohZAw9OvNJ+ZUrrEnzbNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744144793; c=relaxed/simple;
	bh=I+zq62qS6oL+XEtDVfeo6+FVcxmDOjuXWD6lLyyqh88=;
	h=To:Subject:From:Message-Id:Date; b=Fhvhu3NfcqdCdH0ze3PdQ2WGKOehOQ86KJxdqShEoU23Lqf/8B0yMdawYPtXFMUsRqVMaKZP5/YQqChYldZ2DtGmiliGxzBJwubjCau95nNB5/Pqm7H/Xpc3Rc9sqL5B3tUdGy1gAolCrHxpxC7WTLE6WUMcseoA0391UAbY4n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5s0us6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5s0us6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5B4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744144793;
	bh=I+zq62qS6oL+XEtDVfeo6+FVcxmDOjuXWD6lLyyqh88=;
	h=To:Subject:From:Date:From;
	b=k5s0us6KoAGgAlJZlJLBuLIobuZN5uyOvyWCbEIwalFbmU63BwQZEnSGfNrCarYrZ
	 rFhgb+x/w2BVm1i7fImalEZp1WCS0KRlis19M+AS1o52WtP/HQM4r9ZK+iHPldzyKo
	 UEUrmdoFPagXBt74kSGOYmtpz5JBzo/6FjTKkEEt8cI1NSZnZmLpg/JGKkPafA8qzu
	 el95ykQMh4dScMXE3rxq/Adva7rxwmojxX2JGni5nYCFxNiNRlWRpogqQxcWtmgr46
	 LdMgws2f/J4JA+t43ITR5UNuvcIlH/NDCC1i79a0J0tL0xtZ0w0OSf2iiK07g5qmSN
	 CfH4W+3RUTXpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E9C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414479358.2975.15799098260752310672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc110df4f421509743b13d37686d67b3061415aefeddda2ea382c8a98176c208
Date: Tue, 08 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744144793
