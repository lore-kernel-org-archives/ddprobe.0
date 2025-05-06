Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6573589E3
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746498594; cv=none; b=hHEinICGAakaXMGHEiiSx/zW8YAR+xBXKrS5qDsdCSjw7F62uZDyxSzjCr8N7tm4+K6/qBGUZzQQq/MYoNt0v/z/1n0ZHlyyxqzjIJtPLSIArO2El6g9ldR5URWVeKK3uUPrYccvEd8M1DKe5ZNdUaUy3Aqi2qOL+UrAGNYpCyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746498594; c=relaxed/simple;
	bh=yASEzqizBxE95g15GHPjvV19tCuxXDJ26YJxc4eVOKY=;
	h=To:Subject:From:Message-Id:Date; b=FTnvQzZg2Zv4R6B508O04dONz4wA4l5ZfpXLF/+IUCx9JHWyt72tZX/SrhXGA8tsR2xTw9Xi7ekZA5CyRGTGAWEm4aqOHYx8Yi2dWEyGsCX1TRGywjkZyNSmwm6ocMz25gia3G8NkJAilw765iv/B19F4hvyRC/uZJThLBtnmgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uta1Oye2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uta1Oye2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF48C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746498593;
	bh=yASEzqizBxE95g15GHPjvV19tCuxXDJ26YJxc4eVOKY=;
	h=To:Subject:From:Date:From;
	b=Uta1Oye2+HBPm0rSKaVmis/u+oKEQr/p+iL1YKNPv8H6LdKLNaVE9TFd4vbIAVkcv
	 FAWXr709UO2IJw+r5Q2St9yfPAjGbiHekcRgCNycg9ALCHf/nJU4sUI1/IsI4MlKT5
	 cxDSGpiu+2Euq5uF3qKXNzVSsbGt+bWWPEEMC/v+wZgfgV9ke5c/qY87EntM0oDnH8
	 BR/kQ50ckMrKeto9ie1m/+e6ltWfJ4jEwY38Fs8koKZmmhyqlc5FJlfsl4unyL1Qrj
	 gOdVlm589lWFlo4Teo1QnA3PLuyEmxVnZVo6nfUu+9qlIr0UXaVegdGvvkR7TPtUbH
	 IwQcErzUAKbkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E19CC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649859357.30335.9181778170732346188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140f903d468fc3b830504167dac7338dbb1262f41b6dc51ba38ec2e1acc5cf86
Date: Tue, 06 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746498593
