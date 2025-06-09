Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DC325B69A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749477594; cv=none; b=PUuWMstfXBXshyKl1NVGTVBXqCquaeyUnR38in+Ecg+vVrGKMsX+5pTGLnfwayJkvaMZ3j9UV+UTlXCBRB8pE28UjClKYiAbSE/9jkZbHT5hlIET5X+hLYJog7CNVgCCcOMenSjBzRXnYGLZE/kSYAHku7kETgw+eSRRw84TNIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749477594; c=relaxed/simple;
	bh=clISDcTU/5IoUEntl+71seZLMg18+AO7iEqN//sAVGE=;
	h=To:Subject:From:Message-Id:Date; b=ml2hvl4CQBM4yBUDG25Qo3h81Y4mL1/f/w6f9l4+3YWGp9wgdJ7cPzEzdpa9PTAwgBGLWBFqgrXm5F+2T2sNMGqr8dn5dn2OdYE2S+9PlI94Gb4zZw/O7qmXbbD7E1bkG4n+0/4+RlKv5W3wFerFcE9xwT002Hl7btoHOg0+qYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3QrZGIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3QrZGIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1564C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749477593;
	bh=clISDcTU/5IoUEntl+71seZLMg18+AO7iEqN//sAVGE=;
	h=To:Subject:From:Date:From;
	b=u3QrZGIp3xLVxeicYpIATbi0K0ie0yhurJM3nmMtQU4NGzNYe4sbUUXJ/Cs9iE5td
	 HnMAJcGpyB0onZPPG0kuyJtg1Xk/fCQNbrt/nDxabN2TA9kyDEwWQDTz3XWSrjgv1l
	 Q4bKWsm2C67ka2M6+jrpz9NiQkIxA8hBkp+VUkZ6sJarD/7JrxctA0TjMDoCHy9fJe
	 PeW2mieLK0zZudSgCHMd+xmbYKfWRL5Lw6kAZFmlrgyAC/7kiWb6y9WUb1g5cg23Ix
	 hj91OF8W0w6fRLdIBWKYr/JmmH8YgKFDhc+bbtr1D2j6KLw9ey0zLHqV+82W+F0P3E
	 cfCQJC7a+qN1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF9C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947759357.29919.9551685498523148637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9263ab5fedb97c50366b423429ffeff25e39c40556917a0cb27a86810940a362
Date: Mon, 09 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749477593
