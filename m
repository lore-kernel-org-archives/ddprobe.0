Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E61DDC35
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781472394; cv=none; b=Swn8lOZ4nVXwBo+pM3KPhNH8b2Y6+rGLr/e9Fshr6PSEzekRxv3RcwGKUVQPO4X8hTPvXI+mCEkOQN2BBOVO/gymZEX4rOvgg+/W1WD7f02ysDUycraDktyZ7/KeaSzjNUw9A0QGMK8AOFtKOWsKxmsbYzwrhp7EVA/DtfE7kpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781472394; c=relaxed/simple;
	bh=sI2JyvXqp+kzKmY3XWmXtQPU+2qnDX64XgidIbxlTVs=;
	h=To:Subject:From:Message-Id:Date; b=UdDmhlaJQrWbCsfEAL6ihC7/cbigs5nt0OMDdHF/CvRqZRH0q+HDcqQ6iu/oQSYXiLy38AwToNHgCuxA3IfFrCRyMjcBlJdZMKKebTNavuWe/uhowrSecq7v9Hm6czWobMgDkVSJ2N1yy3TsLlpV00y511YhDbrx5fDVgw+yCt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmNmSWnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmNmSWnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C67C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781472393;
	bh=sI2JyvXqp+kzKmY3XWmXtQPU+2qnDX64XgidIbxlTVs=;
	h=To:Subject:From:Date:From;
	b=OmNmSWnlwoOWv1DCkvxwntCS0/+jEJSWnT5KmFIDXzZQVVZyQFqVW42K/ypVak8ku
	 nz58YeJutGHZh7CcBK3WMeDEzleHDWQX+qNmbfPq1QNMZF64LvcaHSZ2iJjviOHcie
	 9lEE1KHItYQT+HaHhU+p2rMw6UwqENxjfT/k4L1igkdEr0lB20Gh/w8C0mBy9wJBDI
	 afqEecfh/YGM3RnsR73l7nXXF29YUq2hDWZx2o2UPS2eIWWQRLtqxZ6RgpxveP+Dar
	 b+IJJ2qPZrTlurf8x076Wfr2iTs+FEUmtGkG8vetzvsn57dW0b6m9Ckp//dnOr+Ovy
	 5LdTrIAJpd0TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0ABCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147239369.4901.4047082824095700635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2111ce38beabc87d828dc71c6ec0fdb7b1c7d439d33d85bec15203002d30a87f
Date: Sun, 14 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781472393
