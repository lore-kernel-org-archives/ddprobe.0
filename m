Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3577C1D88C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737701754; cv=none; b=NYLzUewJb32kf6Qn+DlVHkQe1V57SvsQTDQHpeuGHDxl702Ung+++hOAwwOCggavNV3E3pW5kSCJ/bgkvTnYHr9ZjczStkeT40CpQl9tNPEfL03dIYeVD507164gvWY/1rc52NcFt5KS3pO/55FV2fFWs2dfwlPbk5ydpuZXFRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737701754; c=relaxed/simple;
	bh=+sdhRHXN6KdJnk0o03im+e8mspuuKdO2zuTE/Cfeb60=;
	h=To:Subject:From:Message-Id:Date; b=UBuhgM/LWq4K4XNDpORlwxUwc+ItQ+AKKnNDLIGQ3OtPApfWEiciqOdSgSt/fnmpB5Gt7jyN4cT51YWEssFd8gMRUih0l1NwyBaidVMM/1mCTKBaS63xHl6ArloqHHxZJAFxW3FoaY+jBpOs6rUkWG1nz5kvA6ul3we2oR+RAus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h76Alabx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h76Alabx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B7CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737701753;
	bh=+sdhRHXN6KdJnk0o03im+e8mspuuKdO2zuTE/Cfeb60=;
	h=To:Subject:From:Date:From;
	b=h76AlabxRCIMdjfovsuyqg/vfEjGaigItdxrB27cbUhwZbgA+RGLX28Y0Hj9l/ooT
	 PVnMkr5vAKM63uSJloDNTSfXXtGOPLUar1/p8z1l2DBVfflwNy4qAs4ofRLNzKtEAU
	 Aco19kG5xRGm2NHIJB5koXMX2Uekyz/tZ2KXhUC4uQf6CEVsLj+qigDVLkRAZyjbe/
	 SH+6O+Pf5OAAuQNQv1lx10FnT4gIKV+tz8yOkZHc+2/v+KQhZJaGGb4IG51oQdFZKY
	 tt5dO+nrq2ul6EMKg/Xb1/fBzuiazWzLH00X+Bepe6D91cW6qcGMGXLjuxnRJCcg/o
	 JEqxYep/BCpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B74C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770175358.21059.14363425661263198423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d238fdaf5cbd646c1bd22fa5e57fd545d78f5beb239b5c6f1d6cb6ef3169387
Date: Fri, 24 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737701753
