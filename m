Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC56346AC3
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778304454; cv=none; b=LVFT4+nJLwtnXRkNGdvaqND6bak9jxxzbHcsaBb8SxRRnQ544gh5Ucu0vn12lDonwOjjDGOtW4WcRKS+r5xXoHRbXlPPBE9cJ+WQdhmp5QcIpuBxWNgS/h5FuXswyBPvP1rYrmvP07xyXi6Kl8bBpTJtbFsswU36f2Lz+Cq/50k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778304454; c=relaxed/simple;
	bh=iF9Roa9RG4WOooCkf83PI/qZhroSlFT8nC4onHkBtA4=;
	h=To:Subject:From:Message-Id:Date; b=TGqeWWQa7yQcuR665Rk/UuOSve8dT7XyY9kRNY5hVu8UDOrz2tyDo4QJXJW1kUSO4/a+ROlQILX73NxvcxnBuyiZJTq1+D3vOzwHubZY+nyLTA1otys6y2DV13ljxCszn5TTMybxjQQ7lFYxTlyj5NpJFK8gQBeHsF5msaxC91s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jgj593JB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jgj593JB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DB2C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778304453;
	bh=iF9Roa9RG4WOooCkf83PI/qZhroSlFT8nC4onHkBtA4=;
	h=To:Subject:From:Date:From;
	b=Jgj593JBGri6u/O0WOtjf3U6rbbb6eCMdgU2KKFdKTR1X6j3l9/YqUmiZyFwbc4Kn
	 VqB2XzI4TK9e2RcHxbldGjnrRVxZbTeRPzAOHYZe8As/cUmvaKt4k9J2RjC9TCW37/
	 EKah7bA9ylmkMnWDmWQoJXR1XjXQeXa7UFicB85FzspbgOYc5zqIoYSw7AgfM37fC4
	 MDVeyuNNNT85v2NWEt7yy2M3G+HLaCY2sr8qgVDpB5YbgFPJvbd7oRDBk1+Otlozrb
	 g6dcQS7Pvr3W3vJga8oC1//Hi9cK6UYshx6VTkLBSSY4/Uefjw2THzz6JbQoiCZ7nn
	 t17nLi8wCU1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09FECD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830445368.10797.14804080767696084047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575a28b54d557e777f19fc240ceffab012fb955a76d850c55ccaee9cd9088dcb
Date: Sat, 09 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778304453
