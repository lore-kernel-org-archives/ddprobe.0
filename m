Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A422E6102
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749671994; cv=none; b=uMagQ97v7P4L5nGM2hPDB3dRftdMD9WFiM5DqLRCvZlCxO80Ln18qAPub3V6Zug02XkLoNd/kpFz2/yDGf/V6YSjO2MJIMlHLV08MxFB7h5ijEtBQcduExYKSi7U5FuzIJxhEe1/hH89gvQZ4vwt8nJq6QX82kwbcxCfBzaxa/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749671994; c=relaxed/simple;
	bh=VC5dVqOf8XEApFjzoTmKV1MC0DvEXhtqUAt/I7uY1xk=;
	h=To:Subject:From:Message-Id:Date; b=PoGSP9pxGBXC4bX98TJg75z7VJ2J5FPPT8WNZbUPdhhbe9n2+oOKGxC8ctwOZw9OF3TDRwYOjIp+R1iSLSy1Q1fp64IC+wu5TjKUHDyqHMOTNDlihHwPtySX/xpRgfNm5nwn/GX5DaUbNnGJhGxuephwUbAkONqwtlq41tszjXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dmzqnbk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dmzqnbk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C3FC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749671993;
	bh=VC5dVqOf8XEApFjzoTmKV1MC0DvEXhtqUAt/I7uY1xk=;
	h=To:Subject:From:Date:From;
	b=Dmzqnbk0kW+s2dW32XSG6LO73BNyQM4UMxqay4jiWr7ZDgCXc9pWooTXuYKUziQfD
	 zfYDvyMJM1kFqi+vLP37ao24YBZRXZfk6ZVXJVv3+O76HHmv1eL5dAOcPJebfFKfSV
	 BiDRiDpcUAGTHC18HvUyZGkuHVLMWqk5IbLS0wmudIbjOS3TP2borDDK90FkdqDQV0
	 QUgESh7T1mD0KyCvNx8D/VCQxfiP2TB1bhAEdXogfwhvVWt/5qBdRPrOE2LzEJKSGv
	 Z7nNClMqyJ2QPY5mNkY8Xa8KXQgog00aLFkCx3dWOsbX+G7x+QlvN2akkP+1I5+2Ef
	 zLgPwS54XD/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91753C7113E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967199358.26249.17360916635297432441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39898c6deb724a4b054d0e6d15c0f0a6d54875219b68e3ba18e835488970d07
Date: Wed, 11 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749671993
