Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5F17470
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713322763; cv=none; b=V23XiU/orairE6N3bchs6+b7Y8komGCyKw3glwHkhes5/zDmTj3v+rAHyWc7PWPrLpfF3ye1v6TjTbiJe7FWKg9dyayus5w2aphKZ0QlQfaMylHdA0tC6z0dT4qFhafwWOI5Ej5X6JiQnPm5SL49VduLzvD9v6uR44pWraa+uv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713322763; c=relaxed/simple;
	bh=jYy28r6hVbhZ4m/92cw51YOk9K+PGduI2eWQAJSN0YA=;
	h=To:Subject:From:Message-Id:Date; b=SECj3vo8WwJYQz3Gv9sGtPX9S8LtfH7w/0rQIay1GfzRo+1wFkdoW95VFnvEpNTGslfI+3pdE1H8XrgPk9hSl7rwGmGo/OMpQXeBpYWSYvwxqXKakoqL2diiAqKHjehlo6LUmkWDunFmvcqpYBd/P7TrVNthXa6Dx0MF3r4Ppl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6Kax86e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6Kax86e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74D1C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713322762;
	bh=jYy28r6hVbhZ4m/92cw51YOk9K+PGduI2eWQAJSN0YA=;
	h=To:Subject:From:Date:From;
	b=W6Kax86eUmn8xKNSEY20cS9aKoBOKGJ9nqh5IiEqZiwU8HHmkjHTqylIJ/5auDSiI
	 pnRY+6fm/f/4Jb5d8AEma3MXUGKq1Zdo49o8otY5O9GQkmtZNEGTn8g4dzdJ/1uprn
	 Nq5BGmdT8wNP1CNflbPFPNlHqmYKYS2UokN3e2d7RkpGJCILcjz+StbLvjNec5P1XS
	 Ji0rbK/7IkKUa5yXvqNROR0VnZ5Z4MMzgA0feECuGb95PaXfiJaCbAbnOzqBPOhtwh
	 zbD8SRrv0fP6cDA7d3OEEVR8IsgH/NNvI26lSWVilPNOhkOYXIjHoa6V98sxBagVcx
	 7A8WxOKaEw6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD404C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332276275.22290.8122015963468937963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079cfec8f1f7efb3d5c9d4497e4679b01c4fe7c9566ca234b93c7d825a666faa
Date: Wed, 17 Apr 2024 02:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713322762
