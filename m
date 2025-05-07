Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04E52033A
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746610194; cv=none; b=Jp2+899sdS5SQe3vYy8JazIBBjlbeFOEGHrr2bHHPCpItjjSfXfbwR5KcKtfQ8oWNequESLpyHdm982zYmX2cr8YX71UWWKylYW3SVVrXWXjVWRa+oPBhKK7xhrsBSCmXB/TSY+uV8ixAJojRu3h6rL+2mN1YKTlvo9k8BQf/iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746610194; c=relaxed/simple;
	bh=Nw2bOh8wFhmnP5valuzHZUw2Fe+RIRlqNpfCNESfBOc=;
	h=To:Subject:From:Message-Id:Date; b=bU7xvED3MHssHy3M4hwrOVproRaQQYUcNK7qGDOiGU/31F+y/0/pVzi/BC8+RJJG5gZVOUDCwltzEY17KmA/BKURSRr9ZczVQu6BfrOPHlnwOVjuHtAq5thB94uERdriGTOyUTs4l3V2KmdcdH4VisqtO1Xl3RBAACwnrl814Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY4RHwMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY4RHwMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB09C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746610193;
	bh=Nw2bOh8wFhmnP5valuzHZUw2Fe+RIRlqNpfCNESfBOc=;
	h=To:Subject:From:Date:From;
	b=sY4RHwMDPrXhPd9Z0c/I5et6h0ISEJloNUiVG6TzUaSsJDieWrmhtUo2JZWiZYvum
	 m1y9TBI2ZCuJ0x85GC4M1o7nVkylVvrFW8d22vb/OhUg1uep0dQm5d4OuFrx9DAvZI
	 uqQ1LjTeu08XUSCMucFUPBevci4WdPRZmC+/ALB7NIt1TLcRr7Nx/YUYxs2eQgrcrP
	 FjXW2BlHhZVUNNLOdQG3anGHq7WBJisq75jhYFhxHXZMAf8kp9ltnVyAtvKHscBmeI
	 jZqY9MSsuxG6n8HUxRzOVzhqycR0zjNTX3ggWPFDGOwFHZkoyoYVMmWGMi+YPbsI3b
	 TnTaAsxd9oUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53AC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661019357.17350.10062297653663501665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f616350ea0e6311f49f834de5d824385d0a55de357eb03b42e243bc8ceca9ae3
Date: Wed, 07 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746610193
