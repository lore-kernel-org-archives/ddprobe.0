Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A12137B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728866754; cv=none; b=dS9lrvkKvr7hYYY2gpwIgzx16JkRUJIXX7mnQAGQuYyMlzEHiqE9Fh+1u+okFeVNjHYSpGpPYl+9p+OlPW9d/TftrpPvM88kbAFWq76GlKdog2xeQCNBKa7WHk8wxLVbIXPSQTBWtLm9Hpkl3RNkzXaxbVae/Fa7c9ZuK5t0Xcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728866754; c=relaxed/simple;
	bh=bCZOxJDPBeNymm7j6hnKg0vGILZuO2/+T5K+q4boOTU=;
	h=To:Subject:From:Message-Id:Date; b=tFxQruNIqs4w5ehVQWn69X8Y1q3SSjneNkn9EGSbh/lwHwsycOA3SpqgZjTSWpXseAq3foKiNK1tbbtjCgpslLEVG1M1BiQQU4ZeAIwD2hadelo58Wz7d7GQkawdK390ScUPo7m5OyB1C3cPJjZk6qUS2Wg1/3m95bePFTk3RXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsKjFnIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsKjFnIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FDC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728866753;
	bh=bCZOxJDPBeNymm7j6hnKg0vGILZuO2/+T5K+q4boOTU=;
	h=To:Subject:From:Date:From;
	b=PsKjFnIldBLBo2MNUmL0aKXvhtNgtvD6M+h/gVh43PbZkYifCtDiX8ZR5SM2k1hUA
	 GsnrVqvEwk+/MqyAfVJJkAHIfaLiC39ecQhG+zovC2Tmb2Ye5ZttAQfQzDb63QtG/V
	 HB5pguCROpUq8bFAhxq+afxW/rYQn9Aqa33JXDptO2r/K+f4fdXWUFUlEiZnG4di+P
	 viG6sNYaDqEwbWfR/FUqWuZMKEv2W8J9HiHQUsz2zvYkxaVX6R1IFSRJmuPiavcQNP
	 5KPAPWsRH7HVmOsNjrMo7aS6EW4sL8eYqPFuRzQFy4q5dri9UcuK07iIyp1umBKgw2
	 8YppX2xTMykHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93959CF258E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886675359.20180.14541135435841039501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100549c0e063a74e40b0701f23465e25fcd347ee13a67ac92935d7ec9937d3cb
Date: Mon, 14 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728866753
