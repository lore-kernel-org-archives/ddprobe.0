Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA1542A96
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771790694; cv=none; b=XNthVG3BBHs1DcG0t0QNxR0uaVbO9YIR3HlzdY5bmYbC8LyRqcN4vucNliwGCu5sZXRM9t8eivPPdTa5c5KHMeiyE3aZJaBMo9l/a9C2daLFd/QvXw5SG8mvRsjMcFodeB/I4np5Gq4cnXGNKHUn/M9UF4RWnNT0JAPItmX+wEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771790694; c=relaxed/simple;
	bh=oU4p9bJuj+mIwZUIx+YGn+mjpVZB7Q8w5Rv3oQwO48Q=;
	h=To:Subject:From:Message-Id:Date; b=mR1vROVByqNMsEvQOrPW1mkl34k8tpGvCL/4hpHzYFjjKO+tFMVwytaHiHe6/qKlf2aEHG+W/sXIoKrvQgfXyDBnvTQKPjhkj7t0vwX1afpk5jAPyRfn+iQfOfP4nMbzyt3S9ohGW/KHz70owbE6M2kKGCiWCdwwObcjhuxn2dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6H2IDbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6H2IDbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD52FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771790693;
	bh=oU4p9bJuj+mIwZUIx+YGn+mjpVZB7Q8w5Rv3oQwO48Q=;
	h=To:Subject:From:Date:From;
	b=I6H2IDbWSlBpvVHfG7ia6eMv9ERtefIB8aFKLLAhUHRnbzJEEGow276Y4SItTuRX/
	 kc2JhSAV6oPVndrSaqgwwh6RcLLwIkep0yuoyyqluiJlOl7dKniUvTsMsqqQOdPzyN
	 IGvrcsiUSyjIHQH5902ItW2uQX8t8ZA8dzlRqn7mdCahSFrLxWQRol7IcrmIIhliFk
	 FupgMJwaULM5HKmrzC9oJ8948w+dNNnF9s/9eoWLuoQSHGg8yjRLqh4RBKL2GFNBT7
	 +lsjhx2DxBIQNbXfkWbi/G9vbJawVfsJSHczO7q5GsrH+DUgDvohoXqSgg2Cg0IoKY
	 73PRy0vbH/YPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B69C636B8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179069358.6894.13536824332261387435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6b14e1225397fa89b858cf09f91fce559ef8574e9b401e69f036eafa657ad0
Date: Sun, 22 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771790693
