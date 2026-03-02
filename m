Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285B4283FE5
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772472894; cv=none; b=Th4rmVT14sghTuprI3zOt75yUi8cyqhSiG2AE9WBaMJImZ1sM8N+QyL5Lssj97hD+8ZfB9lbIuQ725ATR0aZurmOkvRqyrr1lzESfb3VUs3cBIzdDzCekX2oLWs6NxZOOFKtpIwMzI/D6SJbyfEeAPkimDFOTxP8UywZqa9Bhog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772472894; c=relaxed/simple;
	bh=Di2h81QqX7OJjdIMTODjMUW2Qc0p3OUvoBVF7KcQtco=;
	h=To:Subject:From:Message-Id:Date; b=UoC4MM6wtH2qfbbFAVsacdNOYS3BfBbSij3SySIEUXb2iE85WWR0f7NFpzgZENvFOUV0PQuKwIWruChFjIMwJ7PHLefVL+qxuOR3gw2fyDpRicxYWbGBQB8n7qfkPmRyUBCsAvWm/r8Gt8VmlxbdGdkM+t3xgReg2w+euZpwZAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfjJKzdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfjJKzdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36C8C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772472893;
	bh=Di2h81QqX7OJjdIMTODjMUW2Qc0p3OUvoBVF7KcQtco=;
	h=To:Subject:From:Date:From;
	b=XfjJKzdZql2VrjG5JZ4P1nRbpjCvU50lp1u3cd+betBMD5sd6gvTv9ogkH+3jNA2O
	 VYJIoD1Obg4Faaw1zXUbaE5fl0jQVfN32QSJQRkxw/fSVeGFLIz9Qonkw9v0NZP3Mq
	 +uUwqmwtfRp/qcqh0JlKRboc3fEHH7QqR/KBoB07p75jlxDfkiW8my0XM946GCO4my
	 GeUe9BOp9407QJxw8Qn5E95Gwoi8n1b0Yacvlzp2dJYOAMhXzbaywfj7Cw5iMcS0JD
	 P2jlENK62JaOIn1nhzYDap+bsEeV4oau2kpu+sGisRe13+Kp5dXBrLZxMtkEkOAuXy
	 CpMQD1gC5e2fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E09DEB3622
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247289363.4408.15757638480108848676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab0f4c18936587eb13d8e111e70b10ca871fd2d54b9f23499fd9bde9c10ab4a
Date: Mon, 02 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772472893
