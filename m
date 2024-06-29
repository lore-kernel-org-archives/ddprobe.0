Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D3F2770B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719645863; cv=none; b=n/oO9z/TG6wsYOxi/wzeIlO8QZM1Tssieb2MUhVRXR8y7mOG1gV/mBbASRvj/ceCOAgbRMDVfM1gVOTz9VEBMtyRW8dVrmbp3D3fBiqRYGfond54cXlspmi1dIwGEn1ADGk2HAycvhyrx25DANVPyeRGS6HcmJZJJCHxtF7Ksks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719645863; c=relaxed/simple;
	bh=qEKrB7Ni59iefld2ULY+16QeQDFZdcVn8gEcUHp8ufc=;
	h=To:Subject:From:Message-Id:Date; b=bvBpy2zpB7nBCoD+tzVkQ2nsAfGVRstQXw6m/+CVC/xsCV5g7Dz4/1wPmVdNaQJfs/QRxg93xyB8I/1xNbo0GvkFLrm0oSCNZLRdZ7iDCn8VKPBso6GN2dGT+2tabwsyiIQSYZtCnlqAIlSm3bTnziiFBH+g2mbQyXmUdsW6m+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShcG4xZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShcG4xZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEF28C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719645863;
	bh=qEKrB7Ni59iefld2ULY+16QeQDFZdcVn8gEcUHp8ufc=;
	h=To:Subject:From:Date:From;
	b=ShcG4xZMPHK0f1JYQDDtwCNRd+o6LFNOD0bmsM5uCmjqaRxMrT2KSrZcER5DVYmMq
	 zYH1Ary2/CkVfi+bfLeSERr2Sx3640c1l4ycde2Xd2qIyLEHsdB9Rm3ic7gTS8rooA
	 Nu49uvXBxGnqX0vqJ+LebFpeSlFG5+SLQrrPuxx3HWNdF609OwYfr4lDn0kG6mCcCx
	 JW1rf+NvENZuaM1usHeBXThfYdi6xNQAZpFuqUMnixrKEr5ZuRLbkrT/JsQCm8kj6r
	 QLpJ2369aJaXfYOatj8vTiMPhst2aFIVle1LoW7JQwWq2mOBlQf82TILTMx+2bSTEB
	 4kPMBnP/C36VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2297C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964586282.9000.2585160682914845057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d16e5b4b4a2011f90053eda8a295b5f9465bdb2874247299f1c36a197b835d
Date: Sat, 29 Jun 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719645862
