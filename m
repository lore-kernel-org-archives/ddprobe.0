Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156CC2DC77F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764147774; cv=none; b=iWXxEcRmKXLjQOg30ekCfk/NvYNBcbtRDo1Pm3HS0Zrs3gwPc0N7QjOK5q29c1dEDZs9z248KRJ1gvgb7OK4Ixo3UrhqTqn2yQsw53c7GsaHugcVfVycekyApRMXxCwvx7XT3mlJsaE/Nkv+5gB/D8ejBkmF4hYwjpOohTN+jPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764147774; c=relaxed/simple;
	bh=dAjmB3dk+kbnBEX74jf+H6sHqN13c2jHTFKW3wLKqAk=;
	h=To:Subject:From:Message-Id:Date; b=lTIz7LCvmlGx0Ll82mvIkU0vl+LoH6Vhuo+nIdkUczWJ2yOtQYu3Eat2BoY9vbWTTucmz81zjN/0C5tpELUo1m+8EVhCi+RJHi1SidAMlpr2vVErz6jYeS58ptMYBDLzm1wXpWFha3keu2vvaySiiY6vMKyZtMgn64IeT93bG5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoRXm1xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoRXm1xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AE4C116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764147773;
	bh=dAjmB3dk+kbnBEX74jf+H6sHqN13c2jHTFKW3wLKqAk=;
	h=To:Subject:From:Date:From;
	b=hoRXm1xb9EJSRlVFeouyis5e828s1fmLGZ992+QLWU+rNRVzVeXmmXM9CB6InMN0/
	 f5Si8YNTrVtsPxO6eP02Bnws9k3TVsIlQRKWwasxjUaBXCnmTogLob4B4rt8xmQeU+
	 Mmv0MWpfcSgpuSeQQhFtsU2t5+HmcuUxNrZ2ACm3uy34pXaeLyL4/SyByR2GSSvYel
	 bRZck/q3lgDUrQjRjnx0NHn5HV8zI5MDDnhZ+joqL6Wh8xbukl/YnIFuBX1iIXT/Ef
	 ItIn8oHuVGqNMl+mU0aGyyY2nX1grCW9Xg6FqIOHRgl7233TYuLhvTFR3o0KaYT7sX
	 QOxVBeaiy3ixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9330BD10390
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414777359.8076.4336397812328278936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e753d37edfa172740c5325721214394bd01a44aa711b053b7b7259bb99afb33a
Date: Wed, 26 Nov 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764147773
