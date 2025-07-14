Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7EA25D8E8
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752512994; cv=none; b=OOktna+TZSNczTIveOf9JbG13nq4FDmT2pqrUMFpwMn/sQQChunr54P6AWfBRch5kF3OniCOnJhcpa73BOcEDxB/ZP0ypCwHtXaQHXJ9bFGlAkp7+m7B1V8qiuNcO/AUco0J1JUzmiyec3taH6oVzkam1s3sT9jWVMaImrk6gmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752512994; c=relaxed/simple;
	bh=jmHL+A1KVV4Zn/TNLRJLPw4F3LVBVIIRACPs+ZYmSjo=;
	h=To:Subject:From:Message-Id:Date; b=M2zkLZuOdH/GRi1XR/MIgB5YfREkKoJHQ03SMK5gE9bvgA8Nd4MAkPzQTesclcLjSKUU6c+Oorb492erdpxjjUcMRPwlYXZ6x2eNS0jk5RfeLVxTLc7N1KxIaD5xXNE60GeeW+z4olrO+p9i1dEwAJB0WQHEDWXRZUzpE+7I8Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rgtq6JR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgtq6JR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752512993;
	bh=jmHL+A1KVV4Zn/TNLRJLPw4F3LVBVIIRACPs+ZYmSjo=;
	h=To:Subject:From:Date:From;
	b=Rgtq6JR6vb2G5TqrWa5gocM5BiCVj4if5xW7VLmZfGV0VI6p8JFLhsoj9OkjtB90S
	 oDgrd/cRtpL0d+dvNE+PgzneM1pCPUamXPGFQELhUam53C479EG51ti3Lvo0WXE4By
	 HbhWlKEOn6ZBji/031G1sWfOC3b0B/ZzFSH4MwVjocWrqcMlQwAed5miP4oXGaOSb8
	 oHA6LSYQ8XR8zoEI8ZwGWeUdME82yPtveMK+xF0pImEvSWFeLxSlzMzcpRsbpoaQIp
	 spo1h8aT62IOa/yUWoeLfQFWGeGtGzurY70XbFrk5TIM0v/z89b0GCmbBVIrc+5PFb
	 /1Eb7peFiHOMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC41C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251299357.27201.8012070165195693473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86e46413d15b10f97ce8da7e722ec587fb0ba383768048486afddb8fefd12e6
Date: Mon, 14 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752512993
