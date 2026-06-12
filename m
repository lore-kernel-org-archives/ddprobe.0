Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7BA2EA173
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781262994; cv=none; b=HS4QR5ZNMmSb2v7qyQzAzG9VRtGdULgMxTy77fbUCyNGDPzF+5RiZok2HETrkVFVAxEkCjoFUKCzOli/dBnSYp2Wt8u+KrFPhZe4Zx8bKGU4ks/ehV6r4/QvJzZLRnKaVr9WuuAurobNugMnOwEpzgUKNAsIGykHMoJdHapIuCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781262994; c=relaxed/simple;
	bh=CJO2WMf0Uw5q3YQYr1WYIL+PQQQmr6lJwKCGo5MeMMM=;
	h=To:Subject:From:Message-Id:Date; b=urui7ATeDW+pS7o0TfN+aTxeNugjEsE4COtqaHxZsxImLLtOCK9FzMDBgc7jdbmWKxoPAEFSEedphF/b+7QfHRqULMu+6Eh8IsMACdl9U0Gr21UMPaC8wYDK6RV16hUz45a6JcHUk5fT+fVvfrsqbnMAbu9NG04yvtq06Hyb6fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBrarpQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBrarpQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ACFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781262993;
	bh=CJO2WMf0Uw5q3YQYr1WYIL+PQQQmr6lJwKCGo5MeMMM=;
	h=To:Subject:From:Date:From;
	b=EBrarpQhi862xji/Yuyig6uEiTPnRsHHe7CzqHB1CeszdTMaJ8vC21471zkxs3dMP
	 52YdV3od00LfawiwUo4nTXO5mTz0Z4N5iYV3Lp9N9KmjUOki3LtBrjBzZabbIAy5kp
	 V1FsNBceNoq+5uOV8idoYISjWn1yXafHY9GeVTAIKXjaNZ2vdvWjDGNP8JNTLnL2AT
	 o+mG+x3qTVjIDXp7qcaeEGGvKf4oAjzlFZETp0ZshKnvC23EAsMdVdVZk67ZaGM8gM
	 S6fCG4qqRtJhcCK3THaAN1S0GszCOOGjpuIwMX/cTkPXNpQDnMiYzPgeYB3iGy6pkG
	 lqma/GavqzhEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE564CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126299368.16574.8076046130566262221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ef7ec821247f13a9d9d9fbbae861bede76d6798f001e0878090bd025f22664
Date: Fri, 12 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781262993
