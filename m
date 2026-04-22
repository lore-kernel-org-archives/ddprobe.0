Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0443B3DCDA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776861454; cv=none; b=d3S3jBJTADF07kMOdhdmCG6dz7vLDhe5S18ixggdd3FynUvjRAPy5PtkAnm+bxDizG8nsq3NwjuxX64Y9VHSEcUqtOD1Ki61zUbMClcbMHxfhxCn7XTDonWFgstB1dDSxKYp3J+b798f4EuSlbzhLzMMDtnTY1NXB+38c1CeWik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776861454; c=relaxed/simple;
	bh=gRIRmQSXDXPbCSWRi6P97MQnJ7hOYwadIPWNmYun5Zk=;
	h=To:Subject:From:Message-Id:Date; b=V59GEBdf8Kcw3UQnhLbVLKUcZ7l5xT1p7vF/cRsbLU0DWh/MGLYE5/q/AcSsTxqJMzh8+nMeeFvgz51xrddUMlucBsY3WMlRsQ2jWkb1fKMCsAM1g22YnFkwRiPDHL+F+prXhMMa+AQ87/ptpymNahM+PN51uejZNmRoKTWu8MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3+VNQmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3+VNQmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A2AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776861453;
	bh=gRIRmQSXDXPbCSWRi6P97MQnJ7hOYwadIPWNmYun5Zk=;
	h=To:Subject:From:Date:From;
	b=p3+VNQmNnb7t+VFqFHqhfSQJrEtFkIUOwddKCYUOWdvqyQN7dkDe+P1D0gE6zJJoC
	 932urulGf9IZL+MI30C+TrfBkSNrtWyO39Fw+GAyNiqayO3LkvTTQicMeTTUYWYzCf
	 NindHsXjoiKZAVFz+wAUItu38qP1ZOABtEHTosYqrDFM/Ni5enTZ8EorNXxyaSN9Kp
	 PJjBFpXbiEjiRWD4n2DNcwf+ET/D9KeKNb3Ddl8X2ijEk+WOu9I70wif442MOkgHpI
	 NLZKeXrRXGOb9XfjyYKJzwizRFWUADvvCvPdeUv42XX6Xgssc6xv8sSPhQsNDZWMEr
	 tZtNvWQoJDVvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA054F9EDC0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686145368.4761.12736052913948287519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc12ecef839f3c131f388d1f23996b6e83c5041fecffad2d978d4a643202c104
Date: Wed, 22 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776861453
