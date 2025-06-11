Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA9D7262C
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749679195; cv=none; b=HugGz9nmkTAPWT8MZDwRhSpSU2/eU/wFTkyIF3eP1eQRNuJcjm7Z44IXbzlo47Pys3xceOkSp1/loP3S7eD7Rxo5gqssIVtu1RwaqRevr7+H90lEpEjg/yDhFbS/WGfKkizVT0GyiLSN831azVcwsGCjGVQeOFy/ytHgRZmxGmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749679195; c=relaxed/simple;
	bh=Dk93AEWM6N+VWPNsLBYhh+7+IBQ0qais3ltAuFMPiIQ=;
	h=To:Subject:From:Message-Id:Date; b=JbWzFo0HjOvozpNdvMdq69E1ayAWZpFwaZv0MAGXI8qJuUGu9130AgLKVu/N6XnyY5AaWa/rsUCAPD0hTbT+PxBQCdeG8Ulc3CR8LZKHDw/sf+Lib3sFLEIUE9nek2iFD3dtzvAyJgiEZqic1NL34pF6Gk5bzA0S5a41cWC9hdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVMCQm8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVMCQm8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A545CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749679193;
	bh=Dk93AEWM6N+VWPNsLBYhh+7+IBQ0qais3ltAuFMPiIQ=;
	h=To:Subject:From:Date:From;
	b=qVMCQm8vMgLXuNEGVsXwAMj8jBKCPqfcAMI7wD33sNYkWhx71koPfrzrnJsSBD7NZ
	 RG5+5CjRffY3QMB0Usu9AcL0vS0aKRJcHuatsc2HKn+ntDJWI+PMmRjxFOLVVqJ7ma
	 S9GkSFUU/daU0Azus5b0nfMe86cSAi4iMnl85vU8IdBW8FvacNI6qmGBNJ6H80Sd+m
	 +sIVqTtcMiT66eVC+fCmRgQ9racRO19afJ3wuU3I7FZAtHMCfwf2eWqt87KvEEq5XE
	 R3NOUUB8HQdTlAUAmnpoULbBUO1vd5ieP+RY0xoaH3w7+U4IOLYWFrSmZLr9e+jQPi
	 zd/Jrc1kIKOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C5C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967919357.32707.9234553061792095953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7396cb48917328b4998ee1a60699195a43ac33e21474724421e4e9a661105402
Date: Wed, 11 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749679193
