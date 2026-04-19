Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331AB37C92C
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776612454; cv=none; b=iWX64QSSVZ3Q1q9QU5R+SrFX6z5d8bGdcYtHwWj17TUZiiEXHJeDmGmTzPZbUdvfBPR225iAHVaFPnzrLbk03f6EmGPV9gdPr/oSisQ7eLxjDh9G2irbWuCV2lusYFaHnE0iD+H5YmCmQLdp0A82x7qeBK90k7SwET7V6HnhLww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776612454; c=relaxed/simple;
	bh=xQw7LJuh68OF3MuJgHZ5W7jDpJzZMyXbPdeTCeBWjEg=;
	h=To:Subject:From:Message-Id:Date; b=gqyHyImst4568sjtyu3Qs+WVLcnFO2jrOD4l73E1GGpjL8aiSTrFc4BXYxonsDHm0gOQIhmNfoYopMziDKmfQAPT8E3KhzBpPyd2j0fMgxbHdOHKWYlg4z4rW/i3AbO1uHDThgearJIzljCMBeBDy1dhUFV9XBC9hw7UKxCmuq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtpLrJx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtpLrJx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18FFC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776612453;
	bh=xQw7LJuh68OF3MuJgHZ5W7jDpJzZMyXbPdeTCeBWjEg=;
	h=To:Subject:From:Date:From;
	b=qtpLrJx/FJfZ5uXctI4+1qoBmmOtVlFXKhQqIiApO/NWDjDMpmp7BIZuHp6VpgJ8l
	 NzDTC5QhAkOBnHSaTSPRUKN1qgvuP87UAT71TwmhUnYG7suODih+OjaKyb+oI8sYwL
	 tNQCJg4DJtDVznAkWkn1t43D/hKYDlVTJXKroJniiT6ttYQkF5vun9423Qo2nxFGcP
	 BCIwNUnbmFmr7/2YFH4nYea/SruWj9jbji+Nscwk8+hWXV9od6mSqqbWcf3ekYsLL9
	 m/YCRE5QOli7EGQFc1zTXAigTrGEuExSYYybzQArFeBiZ46nFOTfV6OTG7D5kdfyT8
	 3PVD9EP+C3RQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF7EEA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661245368.1694.14667076124704987689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3445db0ed2200c349dcdd0a8eb0e912e141d0b92145138dd5ad2d76248330a1
Date: Sun, 19 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776612453
