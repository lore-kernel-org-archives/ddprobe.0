Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297CD3630B1
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777569454; cv=none; b=EVPXx3al0a1aJFfTU14Z+i1rxXXeoPvJKwTW1kjkawrG2eLn6ZBwWPBGbbOBcfHEO1FeMBi2yUXpJeRPw92vbQlOGhVQ4HEkLq9Ms11CL9JqM2Ao4bQWwZXlyEMW1yWqb7MRNkjt1BE13vBBe32cl6HB8qMS+K06OfYt3v9iRy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777569454; c=relaxed/simple;
	bh=fIKA5f+I/KKN/z2yRMAsObvlklIimGDlXxzNHQ2DYOY=;
	h=To:Subject:From:Message-Id:Date; b=cNn4mdTTZvHjfeZ8YNbDZT/sPqY+3Q4HYJ8EjSnBfUov0xCWGWL+e+yrG1Gh8QCv0FJhO/o8wIjbhkgOB9YGLRShdrU0CZRXqZkLVAK7+BtJwA8ubKLRaWFrJ3gB6HWX6fWBbKd2GgGV9YY2i3kPB7X0toGByKF1lqftfN9eXEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6gPlxQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6gPlxQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16E8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777569453;
	bh=fIKA5f+I/KKN/z2yRMAsObvlklIimGDlXxzNHQ2DYOY=;
	h=To:Subject:From:Date:From;
	b=t6gPlxQLad5TARKSXiUIRcx/MMXxqv6QOaspx1EOdUQN+wU+RX8xRKqVASxq7iXD2
	 zjXVIBRi8PH493Hq4OjOq9DGF7hi9akEafRD14YU94nO8oPRdNH/aO03pmayJP6I5P
	 PVjgZs5uRxBPAA6f1oNLkM39JK7cUzrg1MTMKnH2fhr4Lq+mGtem4u30P4cN0Qc7o0
	 vtxOpV6nTesRt1L2kYztujL40HRd8PsijVf6p1+Z5kYa0VbXJX1YQvhtNkL2+2xzqf
	 pXaY+/CV/tFG4FjCjiKPtSS8RqJ0TjiIz99PXUAlq+LknTw33Jbi5iaz6KBkL3QeC5
	 bbZjs1cVJ17fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0ACCD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756945368.11311.12928078388596769365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4f64caad0dffa14500c49779fd7cddc34c478f6788f02b15b592849bad6100
Date: Thu, 30 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777569453
