Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288821F3BBE
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742673594; cv=none; b=dgoQn8w3E0qcBFvNv3Vj1gaN3rvJ3n++Jd16Rv5v6ec4zQVYGpF44tqzfDIqqFtPwCUGpGKxkJ3MyOUzuNnxrEla7dGHFQtN2i+EKUFNKUoSGcTpH2r5GmNrqPaLNKt8HwrBM2BdSL9K1AO1ZU+uiDP9i1Ih9QznOrrWI5AgEgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742673594; c=relaxed/simple;
	bh=wSUXvSuQFC5cLC3B2P6PyQfiG2LoPinkx9r/brBW9W8=;
	h=To:Subject:From:Message-Id:Date; b=mHmIFz52m/+2iAz9Kfj2chgoKGH8SpgdEeauxQrBjTcafgic8QUWerTSPiZ0E1AdukEbw4Dw8xn4nGskeWNMZX6s5Sw6gv1gU6fR+pDSYM4y4pSplHTjjGg9mC3rZATpb/u3eYMQH4BSvd1tBokxF0leFgRvKfvTNrl7jsbx+sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2UYfFQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2UYfFQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B1C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742673593;
	bh=wSUXvSuQFC5cLC3B2P6PyQfiG2LoPinkx9r/brBW9W8=;
	h=To:Subject:From:Date:From;
	b=F2UYfFQ+zwo1ReXN7AJzdQRY0JCw5w7PsZsbWyyfISR1mlQ8SFasbWPvcMQVY1FJN
	 JhnonxXdCngGHKlOpjvU8PmdZ4ilAQ2tmRA/NuboIskGkwsiUg2N/5ix6ag0Viasu8
	 AU6MOZGccyIBOfV2Od7/l/Fl79sBpftRRMyCB34EW3lWJ0PHvezRtlG8mqhqwGNNZQ
	 v/5BSIN2gzNWN4nOZFwmdE19sIPzFkDOBSGzS8v5kwHKzKZEdiNnzA3lXUduQdB47j
	 dhibqFQf8h1sTporTVvxTrqi6hbvQFLEEOUwhqRVn5lBXPHnJgm82RN7us5sL7AkL0
	 So2L9dGvMymog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96369C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267359360.12617.2820126148134182110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2404c9fff2e93742e421aa3064875828a62bfe288e499adc298a39e0b98e108
Date: Sat, 22 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742673593
