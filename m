Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F283C1F29
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782513514; cv=none; b=R9lxCvQJYBA6tFMJcWZztoIdiGsS4Yv3wBQh0wKdCwOi+pqgFRr2dnh1F0mdFIko7bKqJ/RXfK/II/T6iqPPbXKa26DisExI9l+pqu/vQaAIsQBsWQzHZKtemSNLzqmNz0E9Ba54lwGPLnaqg8Jmo7zHeTD/HcW6YoR64Bj2HHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782513514; c=relaxed/simple;
	bh=yc8jzPrGp/vnS6cL1GWZx1Y06izpXX3et/Cd0Uv1lpk=;
	h=To:Subject:From:Message-Id:Date; b=ZOpumjcmphiQ2+zfvfLO/xZ1JFc42hUcYZ/oYCJRVRORF8R2UoUTvZNKGsvrUGbljI0qSATriZrGFRXU2e/GiM+5CKhzEifW1ZtJePVFATlRohUUVp9briQWJUfVOl1d/LNaZGJLo+vcLXYwtLsDgEFRWBUxNaMZO9souilBt/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLPBPQWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLPBPQWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24ADBC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782513514;
	bh=yc8jzPrGp/vnS6cL1GWZx1Y06izpXX3et/Cd0Uv1lpk=;
	h=To:Subject:From:Date:From;
	b=VLPBPQWrrWTLmPYvaZaM6e/jdfK1rNUbZKnUnAtyH8QSG08hozHtYlZApQu5mqUcp
	 0/9Nx3ESiiWF2zvOEzfXxZSiE0mnCm5ahroPzc91cVTafNZbqAyAQ1zZxArnmjPlKo
	 SrFFs6bBtlUSlMIKNbzuftPzWGMwDRsyyI2JYVQOwWxnHYJQFPu+DPMvA4l26TEfi3
	 TNCbazxX/EAD20mEOpQS4qcfmmYUEgd4Q/vN1dKb6O4E8Q4DFvSgB1ZNOOyR8qbkko
	 Z+PdGFx3Apjdg0aepllINr5jvfUq6Jxd0LfKt6RexAF9+Hww96TSnw1QT7Oz+BojJj
	 26pQ4DcuhjM1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF122C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251351381.10737.9942383330961881366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a784194a12295a44070d348f35dc64c0585fb0a41c93a1df527aa0bd130e78e9
Date: Fri, 26 Jun 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782513513
