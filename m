Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3212B2E36FD
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752384594; cv=none; b=h/ZwwLfqwSGY9RerwUJK/8W/KIP3t3tqxtmDy12PVT71cMBMKNSVhXa15j6tSCuQCj1hI5QEMXS3hiD5rAB7WxgFD/gcWBHTjEDYe4gfg4RDUq0FK5s7tVScm1VgvyFDNMDG7jpzDHmHSHJfmyQIr5jyZ4P+l0Db5hMJbkO54ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752384594; c=relaxed/simple;
	bh=GJ8A+ark247KekIXHEP2eAdvNNDOewRpYEMj4aXjSUA=;
	h=To:Subject:From:Message-Id:Date; b=eMTs1AzPAe4ag0veTV8gH3xeU7ykzAO99nAyHT8mkDwjLltl5U7LrZTGdW6y8mbDC+1ORkTU6rauNXGauwyRo8R4mw0Pfmg7GlqOnXH5wapjsUsClnfAmXQWJs+hzWlY2NqxkXRB9HnQqx8uERbeBOJ25MWuUb3Nb11/n3V34+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBIkfvS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBIkfvS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C81C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752384593;
	bh=GJ8A+ark247KekIXHEP2eAdvNNDOewRpYEMj4aXjSUA=;
	h=To:Subject:From:Date:From;
	b=KBIkfvS1b4mSN11HYS/4UyRpZyY1/ATwDBcLIB0rD9uQWqXCajk3+5yberLBH40BP
	 WCcFnvk1oz6c5EQCF2Jegf8wGu7uoMX8cRpSyqw0M7c0CyxqrpaTLBjObRej5R2MXk
	 r7kBlo8VdhJabmKwlOm/6EIHuewDTRNK05j2jz0JrG5RwKKa++msnPSqpwjchhxKPh
	 gI01lHsmr1kmNsDbIUNn4LIa/bIM1bTLMNklDjKg8faE9SQle+F+LbQFgQ7dj9bVjr
	 giWyMxP5+1N3LS12pS3hXrp7Uk4veLoq1T/iE0j/ShvhTs5eKjv22TrIGsXyP5rZnZ
	 9rcr809p5UHmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91615C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238459357.4789.15455384540043558783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11552c32c8f44ebe698c23135778c2bda37ac1852d5e535a783d06a962d32603
Date: Sun, 13 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752384593
