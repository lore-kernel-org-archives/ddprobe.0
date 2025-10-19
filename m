Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FCC354AEA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760842794; cv=none; b=F3relKSQq7Hwy68O6jYu0tFsUC0ErudxmfGYW+rP51C5NAFzw/sD7b+TFidUgyA9Ce2DGXia8IZVnNTUdJhXkqmH91jiX5x7VJpTIF/8hyw+dSAta4IXoOeOs7Xgv9A0R7aq+WqSlsJC0L2f340b1ne7ylVbzWKojCEdMJoqAs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760842794; c=relaxed/simple;
	bh=YDwSUq54s9YzzPb/rLF0OfdgTziaT+krv8oQQ5EoQJA=;
	h=To:Subject:From:Message-Id:Date; b=P5IeLeEIs/6CdcTyK5buSNuphwZaabD/aMi9/Caa2f4cOI0xglsqa3XRDqTAD01D3DhS1++KRfuprOWayII2o219SwJOXft3uR+0xmUCgo06uBy2gjR2VzjOmMw8XPRc/hZPZaAphWNibeBxZ5TS4z/pCvdTaG5/7+zbsUcZf9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOG9dH0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOG9dH0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7435C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760842793;
	bh=YDwSUq54s9YzzPb/rLF0OfdgTziaT+krv8oQQ5EoQJA=;
	h=To:Subject:From:Date:From;
	b=JOG9dH0BYoYktUK/up2InoOp/oa+14QQlmocjBzChEtgpelvlpHOTMnTiaOTGZ4Qg
	 BwexUgmkv6sfLjY7c046BrWCubRK5fJoUsngUkzqpXg3vCmQTTr5pKLEOtaLWTwu0Y
	 ZrppU6TAk0n4W1EEQvcPUDbR4n3C5Nx1qZ4+fQUi4nuFOxLvitXBNqEza5sGFRQqVY
	 xWd64jt7NS8acNnpXSiiA9WPUoSK8OUNIHrPydXCaoBnGqvSOHmZfoOEW6KY9XqAwZ
	 4E1Kn2+0rszPEb/WOajbw50pkfB/vHajpCh8t4hFtN4OtYZ7jkwNQSjnMbGetZ7xts
	 X+VNCVJF3q2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BDCCD193
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084279357.19816.14386792242994918870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe663f9b72f915821bc69fe7c6eb973f153f1b6978b2dfa98159dfe811736aa
Date: Sun, 19 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760842793
