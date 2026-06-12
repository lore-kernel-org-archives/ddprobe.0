Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4FD8248B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781308594; cv=none; b=P0o4od7qty+sffAOQ45oPf0Pd09ETtXJmPQZJd4k6rw9YSwxniWDDSZffQw/v+1SevzyXTqoOidLBg7eHyayWPl71dliwTaHoioEFX4g9UI8L+aCRlXSoQQ0Gabh26H5T21OD/C9jQNF50vaQDHxlb9bZ0h41waHeD0lENp2IMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781308594; c=relaxed/simple;
	bh=hUqV9IQbXt8t8IXlCMUAhi4BaHYXdAGrfPsw+wGg7KE=;
	h=To:Subject:From:Message-Id:Date; b=Z7iTMfDTunuS83IoOFoqHimnSrraD6f4sLSJmNxSiA43AgmeQfW4uNVJN+i3VeG/JmQBvgZikQpN9p/yMooXbR7a9o0qFdE09QqETIiovmrcrgh1XijyIr/XYPgouvUfzQpUVt18Kn7ejJ6y8tuf67bxbu7rEwjSwfi7Pwb3FMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZylzjuUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZylzjuUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A94C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781308593;
	bh=hUqV9IQbXt8t8IXlCMUAhi4BaHYXdAGrfPsw+wGg7KE=;
	h=To:Subject:From:Date:From;
	b=ZylzjuUCJOSNqa2VuMED1DpaQ0nfU0MEechhSGOigsLP37TIWf9s6bzqQ9n4kKHBo
	 qs/w5sPu/4fHr4G6ZXRAFohUvv2XjBUOFKkkcZRYSKeqIhdk12EW6HdKmEewd3TnJo
	 YqBuNJPlOxmQ7rL5b+ZY5S1B5cVqae4INfR1oICKhCMKPQAV4+SmzcemLSoXNpwnkW
	 ZqrH5RpivvSd3ECC4BzPj34+whae9X+8d31qKJXrAv9r8263O0hocrMmqIJ9YX7OMu
	 P4foHlmFtCg7a8WgqpB70idMYBSEdFgiLpvSVlhpBUctVExawkwXrkZLtCQkMGZHM1
	 iqmRg6u2Cwl8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44B6CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130859372.3924.16212853354344374903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3608134f4dfb6957412b768dbf527de01c462c65362a512490852b3286be86
Date: Fri, 12 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781308593
