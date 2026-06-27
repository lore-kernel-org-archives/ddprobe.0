Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6D68834
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782578914; cv=none; b=dVRyVn6lSMFvwBv3+nepUvVkY4HHSxHNtP4D+CWJIkEoW6nZRzWeP3XYx0gRmZsa3fQnfT1q8Ss+kKl0x3qRlN01EjIt98Dpzbf4dZ9r5OfZ57EWWoZ4K1GTDPO8pgZVUVwBQI7QYVnmwHVEO1hYfM3FnCIlW6hS6OrShe8OYNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782578914; c=relaxed/simple;
	bh=c5cvlCtKzirPtIFVu7lo7tspOA3DRULW8/E4QGOLYWE=;
	h=To:Subject:From:Message-Id:Date; b=hxGBtt2Thew1M/4cLymhxsQkXnyC+rVdYeHVsC/nPVv0hAXVd5o922ZT6SMJDg67kJJiEzEV8A7f5PnHu6SeQ6dwWsL7OKLNT66qBfgBGcP0uzUF5dkIr+b4GjnLcGXeD/N5WzcC2fYtAlJZOaLulrBhsTANmwiqOf/Bxk+Cd8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwzJr6Ly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwzJr6Ly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3440C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782578913;
	bh=c5cvlCtKzirPtIFVu7lo7tspOA3DRULW8/E4QGOLYWE=;
	h=To:Subject:From:Date:From;
	b=BwzJr6LysYH94fmwRNygcWIv/OUUYWjEEG4tmDCxLm4GcEZiS9dsEqiAMgYMoPkRX
	 cXnEMDbgwJtM0BbQJz5+Pbmz6pmBKCulBzvoTUgPeSJ9MadiWJzp/PAoDE86M9kNl7
	 pxmkaD27jsOWrbYvP5WhvNtwdc5Yd20pQ0VchLOVFj4Wd0VZgVC+q0QztcnWQBum80
	 JXUtoAZWgKPC/jJ5tmyP+T7QZYXo5knI1if/pjPXLhlXV4cSQrareqFNeXDF+6b9v1
	 rvoz7T8jC+51eaOSU/keEuuHbFedAmMeJzkxO0rWE4SJAXrCn2k+TxvVR1NXZhii1W
	 B8SSrFKbKedBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1451C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257891374.31394.11836263213202880662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c4b4f1aa95d0c4834404db76290305badcfcd9a743e66d06946cd32dc9e8b5
Date: Sat, 27 Jun 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782578913
