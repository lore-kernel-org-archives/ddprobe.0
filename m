Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430C2198E7B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734819354; cv=none; b=J8SrR7dWqVCnG9D41f1lWzTamg0chRZ4Y6mSWUXLihDjqocVTkfQhby3uaoZjOevQmomQ2Qp5xMFqKzIYxCgMUWZKUuR/qcM6ho1DcBqAShAsyj5umeQOPAUa1+C4GMdmN60zcPh6LU9auOmkbN6+ri3ogZR98L81Zmr0uWi2TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734819354; c=relaxed/simple;
	bh=O2rF/6Xw2nkxsH579mDvUAT0JiEJuavPfg6gLcbPejk=;
	h=To:Subject:From:Message-Id:Date; b=CJ5o7xKqbkhYYcbS0/R5JrlWhm3K4uIE82eqiPrIyJglxfQnOoMz7WAGvNH4X/Oko0RLQ70H/+qQzzlfzf2m8xQCBQwuSdzECyquX2WZOuaGRXlNtvR9PpBK11/1hbN8k8fujP39mShygnbhBaIOUXC9EYIS3Yf//nLSEKu9bcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QE/jUF4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QE/jUF4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F08C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734819353;
	bh=O2rF/6Xw2nkxsH579mDvUAT0JiEJuavPfg6gLcbPejk=;
	h=To:Subject:From:Date:From;
	b=QE/jUF4OvXlbhoU2WoS3qqpl6ef06Q6DSmvRuqbeelpP3WUaq9y/2LiqcI3gQ5War
	 HGIgAK4gbzDzRjDRpdIvKZKdeVrBEXz2CQXQ1x+VZtJtAuAEvFJyMkO5JSukSSHv+0
	 0R4lXorKnnTobU0bXGxoNjCPHUI0go8uHDFgyk00h7cKRynVCmpQMHVPsqkHJq2Ipl
	 nukn+KBUOKpj2ZU8UeunbBNToqiwXEiq59pLp/U1egk3QYpnE8TECnlFb8o2A4kmEn
	 lqHZrHDSXkuEjPuXIOWQ4Ekr/r+bcnGI38pKLoPoqpnd7SlS4cu+u5BejxbMfjdwUy
	 agLjjwRJqCGvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E53E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481935357.9510.473291531005159495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce28a836dddcc5146cf078a1c692c638ead69c1f1ffc280e997f2618d7aba2ec
Date: Sat, 21 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734819353
