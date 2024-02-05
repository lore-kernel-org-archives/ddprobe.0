Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1726B5B676
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707161297; cv=none; b=l63aEg9OIYOlTpjYLRGUbg5MRKZ3RF7yt3Xq6jcYjMVmX4c3OK9q8GNtxIPOJHR2TkHZzG4YFi9cqkeppUOXkumjLLDc/jXukuOnB8v7w91GbT5HYqDjYMEGGSPJPCVijY22xyNSUltpGvQauyEDxp9xUi6zW8/riezBVSki82Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707161297; c=relaxed/simple;
	bh=ALBrfait1KBt7Yg4hVb8Q7yaGC/T1p8Nc1KOjaJb9Z4=;
	h=To:Subject:From:Message-Id:Date; b=AjGGb2ERM0kQNfCmjUrMc6VaAJW2aTN1XmuYHFJyKN0p/Wdw4XlRrlqi8dqX/RKFGqCrA+Zhf/ruW+5ECABxAcGITx3mw6eBYqYVvY9VfRXMG41RS1hws7ShbubrCOY5hgt6QtnEH21xp4/Wi3+W/zLcd9gjBVaJeC4+3I8wPhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgVXBaT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgVXBaT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A650C433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707161296;
	bh=ALBrfait1KBt7Yg4hVb8Q7yaGC/T1p8Nc1KOjaJb9Z4=;
	h=To:Subject:From:Date:From;
	b=cgVXBaT/S3ybaq7UD6f2uybDYpEEDQMMrPKClk2l9C/9qqyrh6eFunsdiyxKxgR9F
	 LJw31H8JtJnEj0gglZPrzPogeDDOmlTtpr5TF0glEYWagpTA72gE3yxnPK0hvZoR+O
	 7sgVsLpB9nGV0sSG4Ucva/Fm3pTliH+2LCqbYEnhhvphsqc2kIwbOih9RDzYpmBY2G
	 bXvU2v5Tor2f/MAUmPd/uOl/uHFqEEJ7hzR5xSAxQs8wUu3cAlTvgZjs81iDFsWCCu
	 R1o9i7pEHuf15jpwzFgU+Q0NVQhZcBAolOB0rTxuVhIRVX6CScdbNkQNDW3zS+hOxT
	 xHaYwJJbKU8xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70385C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170716129642.3168.9526881674976300319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce7be98b9a83e02261eabe9d34249bc0601c90151997b1bf5833b615f847cc4
Date: Mon, 05 Feb 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707161296
