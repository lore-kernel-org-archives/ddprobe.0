Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0577E10EE
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRIUvYqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9BAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702688296;
	bh=YMDD9U9ZzaP1lubIWNLjvHYC9jAlSk3fxKoCMFFS9zE=;
	h=To:Subject:From:Date:From;
	b=tRIUvYqVYUX5EoTP3g7qssMV2SQKRf8zUSsNWTFvARDmPEI5R0TiTOO4HsmdIGnRn
	 OvnkLv5skOKC7yaGN3KSZQu9KD0LwvogfyERfb/rgln3IRvLDtRFv2OpvY1m4xOIuu
	 BMwU7CI9ssYBCVBX9Yk275+ol40N3pPcCz3ANGTI86yvPAkk5S+JxX8JMM+3d1qCuz
	 rFShsYKxfh5F3+6y+CJISN15P5mhJFY5N4vuuTd/aTIgF4PmB+dpew2q8f83BlFWAH
	 16OkcJrJ6pvglCaxHnlz27LpFhgMwoBYWUjz+MqHeLxqsHIliNz2wSFqDXoRukzZu1
	 NpuTqvgWp84Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D71C4332F
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170268829638.22710.13302957366479022880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfdf35fca8ec892278b9017053c73a3931b5a3d0fae1c6032abb26c9bd44b26
Date: Sat, 16 Dec 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702688296
