Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAD6611E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774707894; cv=none; b=blAzH0OLm1JsO9rHSi1NqFeBQNb/d/ZSCliEEC/6pPiMK4r6+fCJgH4OY4wtzTahr4j2dvsTI8g95oYZY6G6nupFnZFqK41OErUhav7kDWERVHvy5l1X9lAgCZ8sAZ1jIbrr+XayFCwmQPWsjNSK3tgmEtqmj40RbpMS+jsMt80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774707894; c=relaxed/simple;
	bh=XP1/J0bwtvTHN0C1yCbPyog9bOukfH9nHF4R4yI2oG8=;
	h=To:Subject:From:Message-Id:Date; b=SxyP2JxArmJmKFsA8ozNk6oNYfJuatAb6JVal/jLNUgwP/ItIoznlw+Q3/otwkiPqjuPmUmjsfXlg0QQPnp3V6dAioHuiBkYAuHHdHr91l/C2JzaZvDReyYrH6n20/jRuzIaJePf5cqRXILsswuw860+LctJL9QxTBeKJ+yfomQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HobK7iHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HobK7iHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA131C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774707893;
	bh=XP1/J0bwtvTHN0C1yCbPyog9bOukfH9nHF4R4yI2oG8=;
	h=To:Subject:From:Date:From;
	b=HobK7iHczNZyyyanHrpYH9RvmR+pG+So7iTuA7Fx64lNMKcSRj8YAYXByNZ86JLw+
	 Dki7gQRzJ21Em+A7uFXhykCzD/bZbhOCCN0St4bPjuaGS2uDBtkNzmZS2otEEt3m9x
	 PdwHkGIqmHfmaSMiO80QjUWa0u2c4EKG3PbEHcm1oM7xyTBuIQVBTgY8C5suM/PAO+
	 wx17n9kvMwr8QdUr+b+vHZaZsEXh4lhJUMBJYmivEfAGFZwxPBuh/f/LWmpDe6KP4j
	 1AiB5WuW8kaLaayyN0zH2wl9DJKVTh3ArbFlmf1MAioc59HCbp5wp5Qfxr+FKxm6Mi
	 fV1J11JMI2izA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462B10F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470789358.26650.2670990000410593930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b51adb69bee9dd54ab56dd43ad17a5228ca73275cb92e6c27b9f10ad8034e9
Date: Sat, 28 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774707893
