Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C51E0B91
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751124595; cv=none; b=tKKTb/+8szBQpGnCQo5OyjCNSpPXWv1YzRBqVMfLk64dCx+PuYeb816yiXpRKCy551aLkeDVrCkVI60FckIp1BnwM/XcDChLLwlshVJK9vF9vg8H33+CZsSByYKwuQhv+pDpG9pvPXfDyMymGGUiRLt6vfRiKwZ1N7MzS4qrzQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751124595; c=relaxed/simple;
	bh=DmIKB2di6i8r2brO/OA8doHHyKHb0YY32rz7u5vDZ7g=;
	h=To:Subject:From:Message-Id:Date; b=Kq1GNOtITejslTnVsSmi7Gh9N5S7xLVHF8sgDJpt8tQLJlmO6/LngNNq2fYM6tiCeFf+Q1sc/bM5cyAkhxH05CIX66ukqUpBkTmGc/huVr2D31FcHYjOFlVJBYnoWr9G5vhjxEODzV1tx9utlhTXmlWcVI6ytNogaO3ci1cRaZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qj+m8RcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qj+m8RcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470BC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751124593;
	bh=DmIKB2di6i8r2brO/OA8doHHyKHb0YY32rz7u5vDZ7g=;
	h=To:Subject:From:Date:From;
	b=Qj+m8RcByZ97lrPdLm+2nPz1hD7wQONKSHlRsOewTP3CRPs28SOMxmwNfG21F7p0q
	 D0RuZo2XFv4kiBxh5/fprOhpjMrQM6zTxyD8Xo3uyWO83N9GNbAjWsYatzv/DUNRLv
	 uv10/a3vmEAHfR7Sl/tp+D91vXu8x+/xLN1URuzHZataQE1lS5Vay5qtBD2TcX9xQ/
	 daor2fEmfnYcN7Bd5Rpf2J7T0Pe3AZ5R3Egw2l5VdGmkKQQdOhT22EubnT+k+MQSp2
	 rUc7GdvHeu5JibrXR9y2ge6KXQjyuZjOl4gIotx3/XaDq+ZJDN3+wLhUkI5VmusLp/
	 Tq63mZmuhgItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA4C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112459358.24284.1501141904626319240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92262888128187da9aaba85bce5678da4e11839f84675130961205f99000e3a
Date: Sat, 28 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751124593
