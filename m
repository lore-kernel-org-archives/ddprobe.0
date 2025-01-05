Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC9AA29
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736110554; cv=none; b=pd6KpfPeDqh5KazvzEEaalq/bgYWXx2bIrjAGFiV0jSMyctvnx0w8zNdtyue8UJgJW7uG2Jlj6DQUVsxcraLn5o2EnnuTa0wQkFDDkzReONo0L0UAPTucjWccsdhpELTRc7decnxJeCOXsXSXQ6q0eqaLnbScuVF5vRS8+B/iAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736110554; c=relaxed/simple;
	bh=jkatUNOm3o7+dmfZZJCVo/yMZVflMiA0YEzvmDqxaAY=;
	h=To:Subject:From:Message-Id:Date; b=u9AwV0/y750F7GA24N+BPamnppv5+Y8ileLEZVkDblQWU42UBIyqccbavQ1ILwujQWVatcvYuU/dGfAbIeihnMxbPEdT1mfUVnNAtBjQQZf5r67odprXQhRl6Y/u2SRGEcr+jJ3X59LhuEoEKbEH65MfvDZB/XyVvztnHQRfJdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOYXw4q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOYXw4q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06CFC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736110553;
	bh=jkatUNOm3o7+dmfZZJCVo/yMZVflMiA0YEzvmDqxaAY=;
	h=To:Subject:From:Date:From;
	b=TOYXw4q1rIlOA8oigCvmewMsGaZcUWvpckb+uSzRqdPbgz0qxU9WaNl8bU5+8MSYB
	 tr+wAweHAfMp6dxO5zgp+Bjh7DKT3XOZzHZqFQ2V7xo2KdJZydilFL3P2Dbewof7OG
	 BZb5K5JNyP9v+QUPydJcot/Gjy7j4JTGAZQ1aeWG+EsV7oE5JK/dxiQmwoflvoC9V1
	 IOFiWu1Utalgy0qecjVXDlckIVTaATuXQ1JDuLLVpb8Q9fI2FE9w1QQ8r2CYRiM+RM
	 W6t5lEzm+Ve/ly/o8hh9Jxae90eTQPFvpHQM3VFp2+OkP6vSw/jMmjOkA2afO5zu0r
	 Mbv7yIrzHG6fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549EE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611055358.14048.18406915323952693571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a65ffe86e565f220fef9f048a3239196068592ae5634204199a4c35ae7ad504
Date: Sun, 05 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736110553
