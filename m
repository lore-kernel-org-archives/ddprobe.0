Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0FF23E320
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763022594; cv=none; b=pIHblediTfWNymeQYnistMpFBxWkQICwWcBPAeq8jPATg4tPSE4WO80QKpiCs/tVxT0nr7MWqfMlrv4826phtKzg4v/FbJ4jqqQta+YKZP2Zv1klxThLa/uQJHvZMLU5rx18u6iFWWTVtvr90MNZant+FtPGVIhCPkfhMQc43WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763022594; c=relaxed/simple;
	bh=Jvy2iLbm6ePxf3YSQjUp5wfDyJ+JTkk/QHHC7AX+nhA=;
	h=To:Subject:From:Message-Id:Date; b=U2WiNcoYUyibMH8gGLFMGkGbQvug6pf4pyPMFJxCTDMvrCjlQpAYUgTZdieemySTZtY5QDhLO7v4WTQ1d61DX4XU/VZfCFOXQtwZmc6fNw8KzWC5fTwrbQ7sMdT+wAHlY1SqYQioJ4+vPeRifuXtAZDUPA8VUFhSNoo4rDmL+Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GukDDJux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GukDDJux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F764C19421
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763022593;
	bh=Jvy2iLbm6ePxf3YSQjUp5wfDyJ+JTkk/QHHC7AX+nhA=;
	h=To:Subject:From:Date:From;
	b=GukDDJuxgYSs8O6Aooyl2sTJywLo4Gmcr0vSXF6QiGMS5AEmoOgBnc8mdiDA0fnxV
	 nTxDKTze/0liF/4WlR7C/kr+DStH2c2XvLf09cMuBs+GsznhKwbCpR+CErW28dB5ya
	 p41QZI2ZfzhRhRgWHaKrpFWH9AA0tSFj++Y5H4/XbzcLftqesnQ/nOBHS2lKQzEFTH
	 vf3kCFJp49hrI2/q0yU73jY8lvo2MgBZZn9ZxTDoPQa2f/8LtOdaRihozfF1l4PNql
	 1ISgNe6Vqfv602nKpCm5ZF47sr9V2jBTbAYV/AjWVr5IIJOXy3IqAIcs7RCJ8jJF88
	 VuVyfwjivKOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A4CD4F5B
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302259358.4684.379160716999134715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d23474484b80e43e60515e262746078bbe8bcb97bc091f92784a032c8e19ee
Date: Thu, 13 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763022593
