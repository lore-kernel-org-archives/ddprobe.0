Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229E178F4F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766684634; cv=none; b=RZjSMiYPpCmNx8K3ZG4F5gYOQRY8Ynur1yxlEBNk2yD0z9q6Wnfs+t7Ixpuqo0JsRPIO+6eDYz7grij3vrA8ysWaL+zGpeCREwhn20HwtP3fq3osaRIFujWMtYqaHsoumEEh/2O5ma6qX4IDPT/Xw2p01ZeRJaFt01KRnqfX1iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766684634; c=relaxed/simple;
	bh=pjpSjPDW7dv/X4YeA5Ura6WDDvCW/Zuj2jVnQOLghZo=;
	h=To:Subject:From:Message-Id:Date; b=Yes9svkhUFTRMxhVRKidevqD9VUQvBnDebhYPibeI2Mfu4+ePz3LMG2iryhugt7JPcm/4GJzY/JroMqSwpgACCU8gK1ReUkW/Ml1NQON+ocDOlORGmBKEuW/T9ThohY0QpVpiNZC51xDd6k0AtIwmjK8/wzSLC3D8Tdk3dMly+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/iAFwYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/iAFwYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E50C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766684633;
	bh=pjpSjPDW7dv/X4YeA5Ura6WDDvCW/Zuj2jVnQOLghZo=;
	h=To:Subject:From:Date:From;
	b=u/iAFwYiKoxY8MVhnpr+fVDJb8+f6DD1AKnLnUniHbamPWL2S4ROHvTPq3UbCp9A+
	 YVdLGVl18OLjAWsxSBtSvYZr+1EpExYtdQhvpL0u8oeTSw50ZRTjKBupz5Ls+1WwBb
	 qMHPSlp9dcYs6cHvyDqIbpb5tj3KWtwIC4o+PgPzcDek87phbURJkkIWRP68xlp/DY
	 mAFT0WeFWfN891O611Xzp3c9GXcZUfwOg7mS//3oxRkhLeKlgzfw7rfuCX2tduRTHA
	 nO6c5CYUc5VLQlBDVrooX+/fC+DEDBJMzjWv4UABGmjaYIsWl6vvBaeHcai9fLLpG7
	 IgwkW6ojAaNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91715E7AD66
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668463358.2839.14520535631629728893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02be1a46239562c797606d351b71354415ae494b1ce97b8931bc6c6ae9c8efcf
Date: Thu, 25 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766684633
