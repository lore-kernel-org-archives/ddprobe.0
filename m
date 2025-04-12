Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357FE16DECB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744430995; cv=none; b=JGPSbrCbeLcNcXo8+GSPRB9CxCnBh8uZbG2sWcteEB8r+QVitjW4U2oGywly/f1sZ/DO5KfnUWyBRQ41xcBq/Qv+61zxIemXq+Y7rJFJ4iofRmtEkq1aErLfyUkmcGquOoBm1YHauB7tXpOngOg1y7deUibyNxSmLJ76ULJW5IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744430995; c=relaxed/simple;
	bh=PtjrH+9tWAyKR5ySoC1ywETx017zO6+srWOamR9u5TY=;
	h=To:Subject:From:Message-Id:Date; b=Wf5ttFUhIQWaRf7o+yvQ9eTpNxMmZvhDArLd5z8BTbg1bk/phHCPYSMla/cKmi2gUjp5gMq1n7Olo5Ik00zLJvtrOhoFWYag4U5pQDbTQFIlmco4pzWWKhOxqtDdUEcjJyZxGBvt++c/G2oXo5+UMP2KQNLkzF6yi2So2A/y/8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0kAtP7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0kAtP7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8255C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744430993;
	bh=PtjrH+9tWAyKR5ySoC1ywETx017zO6+srWOamR9u5TY=;
	h=To:Subject:From:Date:From;
	b=L0kAtP7ucSOH9BHjGLndqcqtlcDokQzQM6miRz/e984a3cutZDNQNRkyGDyk90idz
	 jRFU5j9e12k/VrGLKeip/wss31PdBFaXihiftTmrsEOfaYFjL1klpDlSPB5gzDu/ft
	 9b0J0Vm2SB6eFOX1msxi22AIa4+ortxnRsgCF5pMuHpZwKOKUXKskMlLAiqM6QANsX
	 /Z0lf86qzQ294RYppVRR+iI7Ntl+GcHXa9BUyeqEdFw0wkIE4gbFQFcrZbHcfV7WYR
	 kL8PIm1sBnLgpFA24FWRFk9R2/4YJdpkIYhJ/E6yCKZGFP6NtjlGzt2bZujFzcmGhK
	 /L/OqQ1nbrdJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91085C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443099358.27422.8683749886911347290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcab0ec232fdd445ac357eff854d1dc3fc2267a837b859cce99d66eb6919bc1
Date: Sat, 12 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744430993
