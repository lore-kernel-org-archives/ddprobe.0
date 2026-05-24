Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55592233941
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779596554; cv=none; b=Djv/oN+RS+YCwlqiP2XjMC2S0K3DvhadwvemLsKpEg5UrDfpvUsffWpyKRskGcwAnOYiMqQeLkvC0fZ53DL4xLKq7GkVK0kP7qjJdo3zlo65/HisB8qvkK6ihur4fwzexP11rPwFSUCeTc+0gu8LHGesfNZxgYC4AYEmDuk4XqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779596554; c=relaxed/simple;
	bh=ILL4/6ihYkQ7zYCQsTQm7zNUX24DxUqjQaARXn5klU4=;
	h=To:Subject:From:Message-Id:Date; b=JV3mswRnrW/XyFiq5D45Rf//oUdYZcirNuCnLFtikoUl5EemK5VrSkfDVmRhrDLOeFFRluCAa0Kq31y0M+jDsPyaJiA+OxEBNQIqACjTuohImUQJLUfPG1Imb7iHBPtIR+mWSHP91K0yXzm+jdI58djYkFWvhkc0EAZiwJRGHvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAqo6AB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAqo6AB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0782C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779596553;
	bh=ILL4/6ihYkQ7zYCQsTQm7zNUX24DxUqjQaARXn5klU4=;
	h=To:Subject:From:Date:From;
	b=aAqo6AB7T73msP3X8Z0+XPLex8Lsyga4IBRyITpAbKMWYaP8E1IvleHsr8t7wf+6G
	 tnVxh/mEV5GlKpf1CUeT/zPRjO2UH2iBcTcJcRYO80hJiogGm4FXlKM/E3nVDrKvrG
	 XPGWYl4y5KgQTUW6Os26D6VjqHFwGL6FpZL4dXQWm+kZ7hS67pRLNxK0FyCoUmVxlA
	 kq6p0Upr2PFQbm2G1jeNOWn139TuBvYVi1I2rwG5LwNfnUD5kMFAh6nH0kAkWRXn/J
	 zXG3a1ufZ/5GrRK4BIi3nNeimWdYy0J/CzhlNvd8mvMI2DFiimxUSaCrWYYiQ8VUZQ
	 wjPYX1ET1S5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDD1CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959655373.22916.3771629404027872514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4695bac4dedfcf3266c98552efe4993e5da8f0570b3bb1b23bcb8cbd6d0af44
Date: Sun, 24 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779596553
