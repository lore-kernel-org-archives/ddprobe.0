Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF9C27CCEA
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744354794; cv=none; b=Iq7nkS2vKXNKnt+u4OEqddWl2pgVc+z3/U5ILdZps8ydLDhpRfBaTr37T1K8n4H9PXusLKKsLtvLniGo58TNM3SHD7Jzp+SWFxOi6o8YM49OlydK8SHH2HblXA2hwsYoUv/IqXpKMYPR8q2a6QGCeRWipL2V/bTa68Xiwg3znF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744354794; c=relaxed/simple;
	bh=8CZglWjCABU7X0WWBE8uwbDS5atzgbeuCHs1xU27/+8=;
	h=To:Subject:From:Message-Id:Date; b=NNpgx1MM7a8llcFmyxh3npCMKEjKTjZnGQJ9I5LupI60O38uf+zRKfrjmwuBuA++nUMnLSJnbXhbkuOOY3N3d+kkSzch3UGH4GOSABqQRKLBotlXstwI+ZNmzbQT/VOyujgQQoW1YEXCX17XiZGhSrK+h1VNQlsPstRLYsBt9S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReMDtMAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReMDtMAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4037C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744354793;
	bh=8CZglWjCABU7X0WWBE8uwbDS5atzgbeuCHs1xU27/+8=;
	h=To:Subject:From:Date:From;
	b=ReMDtMAQnccewuexFv1Jx81PJZ/w5+gLV7HwS/UFuY6Bk/amHGQR/KhoLaoGLBZpD
	 BRQ2oe4GNKYRD88u7Zs4BHWEPpAT04Z5FQNpacKVk9vkqBcS18Z4C3OX2aAtSQd3Xo
	 vNM0fr5GMzusLeRwAcTWltI0GafKluqKclnphNr4+VHmDXEWEXELzjC0aHEa2uxu5b
	 UXkHwaHCYjKn+vVVJ+PpWtnu5JkfdxRehsQ5B/rr4r0Ey2+BPIw/se4bQvY4/LBhtJ
	 7AVWLX3Kew3gZHQ8G/YMnid28Xk+5Cb944ltIdnWzc/DJiTviQi8BuGNmZzee6w2wn
	 wbZI2qtmj1WRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91663C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435479358.19116.14475262821083754537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb65f712c97df51e75a268cb17a92129767a22a2b9345935f02d229fecf430e
Date: Fri, 11 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744354793
