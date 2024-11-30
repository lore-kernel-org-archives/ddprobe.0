Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467F970815
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732966554; cv=none; b=KMB0x/8eBocm2nC71vYGSb4bvcQ1nVA3QzS84MryjibncvMXi+lV2nddw5XNyv//VJ6pRyxkJrZzfjRE3sK+8xOI/vUAOCwE8w7lBHQLtaBEu3DrNbJc3JEiDEOKZIMTzJ/RnwVNMI+Z7DZVSTB3EQbOQQ/tqgj3K6D9BQOFYK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732966554; c=relaxed/simple;
	bh=TCHFTKs0Fj5462exXK+VgVhyOwTBnRFAPIvTI7g5L8c=;
	h=To:Subject:From:Message-Id:Date; b=Yy/EyerC59mnV903CBGvSf1KqI96oF0PZIkC0oXx0sKz8zzD6QLhcKwZOnhi9HOMOvcM7HIu3Vun5brZISXKuUvjeh2j2MA2mVQNuh9T3C3Ff8bLPdmOSs3mvOlkSGdITK9qvZq1cAqLNKcOOeyJMavwdK5pQJDLPKdcGJ+Mo1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8QHvaiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8QHvaiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2D1C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732966553;
	bh=TCHFTKs0Fj5462exXK+VgVhyOwTBnRFAPIvTI7g5L8c=;
	h=To:Subject:From:Date:From;
	b=s8QHvaiKIwfURrbpqVHicV7cM+2yvFmyv+ZwJfFnlcw8vbCBkNx0EoGbOltsV5J3p
	 xDgK8KYSLQjeeuzPazv0DWs3/ZHMYOWpgLnxxCseXn7hcWGoGO2wUcJ4KnGUM9YCrx
	 iwcctwZacvXBpzmbJ1kEBKc6mlqmRfyID+bk9y5YX1gJVknF2qSuvXGD+ccI7weY0U
	 EROLrulA908OprDVPTtWOcZsgKdrK4/+vRJhunszaPwZH5UWj8InVY+2GDlw5n0v4L
	 xkB9eFn34n6YyYwUlUTxTSpEGord8E4fqSFeC6t8afI5q7Un1LlC8/FuOMikJbBUAd
	 Fq0FIWRk6WJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAFFD735FF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296655359.2441.4689567456210500703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5158aef599b90bd323f1a9032ed293057986af713a8adb43ea42410938cece36
Date: Sat, 30 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732966553
