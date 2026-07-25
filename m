Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578442F7F14
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785017434; cv=none; b=QbdaZv27oJIcIGwwGBS3aTPzgpvzONI/rXNgeZQn7NpHIqo8wEFqWIUZlsB1PV8wA2+Q2Mrh9ADF8BMqbWWkao9UytpY73IOrURBof1+G+FNbyqkProNwbRllgIQhogNXpAL4liRYNnyvuAVmteGeSsavhUAevUpC5tNDgipJPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785017434; c=relaxed/simple;
	bh=ybSTy0kJOv8SqoFvL6O793oFo9w/2VvMZVGsXAFNDls=;
	h=To:Subject:From:Message-Id:Date; b=ID0zVUH5mUWG6pPUFkRotEQ9qZRNseS3JmblS2E3tGC/j6KPrG0WjpuojbvB/0v9aHZTxe4Vs9bMcdjc3oAjtvKpmHsKGcxOh57Wps9KJfZX95aKGnzMDzq+UFAD4DuT1yg1DQG92iyBkk86w15u+oB6LMy8N9Z5gIAZujspWwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgvSo9eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgvSo9eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ECC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785017433;
	bh=ybSTy0kJOv8SqoFvL6O793oFo9w/2VvMZVGsXAFNDls=;
	h=To:Subject:From:Date:From;
	b=QgvSo9eqkggKMZHUQ5QTa7sRfJCtTw+0bQkoqt51acPya033o7mN58t4Ck3qZramj
	 TSXc3KizmwGzQTXDB08bBgjOxxMeRjwscneWLW8ta9RIQ7s98jwomRH9uzAu9wGBiX
	 5Xulp5u6kAbFgJ30SrRSpm8xWGl7q7WDnfHGH/ya2CaPR0Euz30Iu+RqUtgyxVX2iP
	 1hHZSF07/GdvBZYIXL+MkC5Cfl2owvR/twCzrmTQAJTMIUIe8FS2RAmiF5rECvOCCY
	 O7IM8wIe2OuKzvo6aBoHoWNtKwaEeFr2iHpeLa3FhmUoDh5jVFAWe0RuCaD8zucX6y
	 ZAvSzPIEYqfRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2D8C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501743368.2935.2296995371724031116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5140cb49be590b592986608b5a69013a5f0696935725e97c867323c84ace9f87
Date: Sat, 25 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785017433
