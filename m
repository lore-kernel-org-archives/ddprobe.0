Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD91610F9
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B941C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666780853;
	bh=SxVlqDK+ZMzY9gRvMKMPJxAySYgp3VSgvcf4JhhTnuk=;
	h=To:Subject:From:Date:From;
	b=hvSZQGQuZv91Qb9RakGzF1inzkVp5G18k6VO1+ASwRXVTpIo3eDxfqbi3BIEN1PN4
	 sW6s3vKrA8nv73lYB8BIfQKhvjsXogwMIgGVUgh6CpAeLK3qfRdMai7Jf7Powkp0gq
	 MUD6W/77LiEQWypSyvxw2CpmcQCCEUFeNOgpLtVmzQ/rpHD/+Zy1MkDOm80/2H3uPJ
	 Pdfg5+DyCxKqxr2VpwKGHbD/kOLsoxEaH3ZaYolPm0WdO65aQBNxcjt1FWeVKnxc6u
	 bDnOt4ZmRV5IznhOMdmU1Goi2zQ3dWKHCWSZbXMHdcLy5TnSuXSB80T/Rk0mzCDn7i
	 V1972eushI+Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DF0C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678085332.6470.3455356948047749726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331852017aa319c7070d4b9babf900f12638ae3d77f550357dd12fb3f560b4cd
Date: Wed, 26 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666780853
