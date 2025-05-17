Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB3714F104
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747462794; cv=none; b=WoE4eyNU+q3XJbvJ4M5dWSrcoaSDr8TcWyTOobMeVMTg2pr1BWLOWPTeiqBmZm9f/GqhbZSEP2DywnKYYNYwTN9asCUmjgBZJyKKyh/vSyclBhaz17K5GUT78RkR9mak+xkVJZHgwM4jWDWk498izVliuov1qIFtJNGjlfQ2Ugw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747462794; c=relaxed/simple;
	bh=fo94gOY0VH0f1WFc2t0w8cWO2VjGWH2fak+n5LEbKto=;
	h=To:Subject:From:Message-Id:Date; b=BSCYrFB7jqiIXDyGLuN0YBQnQp+FAC8UHtJp2SDYlxnWmJuLG8F5DH0md5O7nFXXLWuJ0S4rTOx11lEdQ5Ry605JSG8MR8l4UvMxaRlUW/gEoWRcLcbyACrjLjnq+aNNRew6RjgDrBr2Tb1CKS/sEdkyzahQMfrIkXbDbsqaQdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URggGtkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URggGtkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747462793;
	bh=fo94gOY0VH0f1WFc2t0w8cWO2VjGWH2fak+n5LEbKto=;
	h=To:Subject:From:Date:From;
	b=URggGtkMIvrdcayE9lpW5qmUGhFGmQpe11EwuFzoPLZ0KWM4OtKdyU3BNn3lpq2jb
	 7HJNIgfwqa32NnOqVvgb+fL1eGdy4vSGPtMcph26t1cIuYLgEmXs/mw7m4g4W5CeRj
	 w2K88VYiDjEzALk2/HrBAmRRZDLqtIU1jo8wotfFsPd96ANTAbfdSZTnXsPFUDl1I8
	 DThF0PeV4eavLkXgn+mbLQr1l7Nn0Tee4b7u5rLKq7fZy7njMFzm6feXnuhq7p8Hv6
	 7pYThDi1/pYrEMaIxNmusmPniyn8yMaHHubObnnmtZtaLgL6z0qTt+kcnobFZqNND/
	 3VQwD9JIkr4cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6BC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746279357.28997.8308242520209934529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e19ee87e53cd55b48f0935f883c765177a802baa52cd8b83c2ef005dc401717
Date: Sat, 17 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747462793
