Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FC621ABAA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773447893; cv=none; b=aJewO6R5Ih6GuL9bMxTHqjkN2xwew/Trqvt0RW8o9I2iW+UtjVMOwzQXY1fi/1Sj6bjZqvtqi7c/jpr65AaqGTt+G6FLk9RRUlRgHjW4UskQJDyTFR00r+npwkR6ddC5Hk7fX6N9XLC6AQK7pjX+d2cpLUgqWvKusoXbb+j39WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773447893; c=relaxed/simple;
	bh=Jc3n+WpDd+1dVLkV3vg+/fQ4dmE4+rgRS0Vfrex5soU=;
	h=To:Subject:From:Message-Id:Date; b=cGzGDQuocCYKP9oR2R2fqDqT3iaq3MuSA36SRa+wSzin+8lGx5iFiSYwL7sTVWsDcjXyxKEtmHOrYnQcKKB4CyWxyHnUM3x+4Y05ph/Zf5XqV0Zvsy2cu1d3QTg0hu7S9HXC9LMcshoDBk75kOWbcE7e4IRpmp0N6+YID8/gWSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciAQErcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciAQErcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA51EC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773447893;
	bh=Jc3n+WpDd+1dVLkV3vg+/fQ4dmE4+rgRS0Vfrex5soU=;
	h=To:Subject:From:Date:From;
	b=ciAQErcB0Oh9J//m3+cQHn6UG/lItEiBCJvAoWoTWVuthxNjcj4vlBdXJPb9QfsLE
	 TNSqpgmB+Fq0AeNNHmHUGyNHJTpojwuyme0+35OZi+/6n7s0TY81mdqWaj814++xlY
	 7MPyyQKkROa2NY0kYifWSIPrTSfPg1U0E6TwouNQeZmbjR9jXcwDROvYk68QIwP9FW
	 SCS9XZlm2oz1n545Ln7FtWxmspxEdK1PIuqzNr+BrVfdqsMm4hBLE0HQ5VpOYWQpcG
	 +5gcbZn1e/jIvuuKHDB1A4FzeVmCGVceHrBLw84sF4UjLa99aQvG5psxTCvhuP1M2l
	 nZCnLupuDM9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BFE107BCEE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344789361.8721.3195985845417390163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24d5e1e227efffc921367b7752617ccc0e26d3804785a5547a8ce69ae7fbc4a
Date: Sat, 14 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773447893
