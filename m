Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F6E26E710
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765478574; cv=none; b=PYq0sN+XE+wwuJ60H/B85kWk59TLiwmjksA8hS86xjiiIDmsuJkI/vSqPYJf3SszZlb4+v+kBU91FUm5k8wL+4lTnPSi6C7HwyXnHtSmbeXoPP0JhRgdM5COXVi9gaYhAgmvTR9Y4MSiZard7eJaw1izq1LKHXYrt6xT0zz88JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765478574; c=relaxed/simple;
	bh=aR7RVIyDES0//NzxCvtlaXhv+94YZrbTuDPe2daZPCA=;
	h=To:Subject:From:Message-Id:Date; b=Gti2vl96E2+FDH410uC2SakssR1T4itd6knAtzM1EW0IPZ37IFAYF2au3qqRfNvVBHTa7z2Q5+MU7SR9EX1ORvntJEjA2VgJkbaJP/dF/8IRbOG+kfDCOADac3qGY7efOU4c8PPkr25Q6Oyixb/kQsDu6qMM2Ast9Xmyg/0slZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/GsqKyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/GsqKyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5C2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765478573;
	bh=aR7RVIyDES0//NzxCvtlaXhv+94YZrbTuDPe2daZPCA=;
	h=To:Subject:From:Date:From;
	b=H/GsqKyM3pu4kR+L8+RJ9hO6w2pK0fRG0eshGokywOsKQY1PtwQy2h3Ddxpv/osa0
	 7rHrI41eiOcXNMIzHEtl0Csjdc/oJx4mkCMy1UMCi2p+p8C+wNqXkcn9Huc54sGoYu
	 sG9GKo2RC5KIRBquJV2+1Pv9+ljCFRaq0LgDK5P7xZ/Q22cEwnXG8xZJFCRO6Z0i/N
	 bMMWcB4OTACXaaR+0Cx7qVPsGB3C3UlDpJCM9Mr+CJBszDHypQVFgIABTqYxVhIhqP
	 jfFBP6desyzQiIWPb0gylARWBs2bS7PGQw5719p+8G6Q4b5wa1yqq/6/RgiHAMbZWB
	 4pbQIMoqLMBhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A40AD41D7E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547857362.12140.8940982191845393099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9364fda488d1b93b017406dbae70c613c2149a8e458533256825b13ad9746488
Date: Thu, 11 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765478573
