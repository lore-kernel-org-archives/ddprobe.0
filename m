Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1920A23A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGdM49Sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E037C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703932696;
	bh=SE8K0sAHOYAyfrv/jC1CBFvB4TYkXRmy9AnpVCdIVl0=;
	h=To:Subject:From:Date:From;
	b=iGdM49SaKi4buNug72DcDIry1oURUndo4MSob5BIoTSuSFwMQaa1kBpKprqDgNPvU
	 I0QLsHwU8HNg8QoyqY+Nrj7BIsLtHxqQLiK7iEsREdVIBcjFltIQc7u/v+MV1SYr3J
	 O85E0PBfqA87zgUvs+z3iy/LNqJEjWwFU4XCZlLX/+3/fMpYVnHjE/Y8NOo4ySPCGx
	 n1J18Vq7dh4wBWeyMwCLUDcbrKPeP40IJEi18Y+aivW2kLaA6zATs8SsDNRrFqrLvR
	 xiBATxMDQbDrVwaLEeuFNMlyThXCWh6KYfLp3p4uaxPtKWdAFDJiiAiKbJQQN04E/U
	 610kNB8fX0K4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6310FC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170393269639.15644.17203496907588863898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb750f040a79286a7ee0cefd574da2d15938928f11acfc8db5588cdbae7716f
Date: Sat, 30 Dec 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703932696
