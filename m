Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF084611F4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782751714; cv=none; b=ATalomYDE0V4tOEUNZa401fIPEyd0pfnZ9QfB9FQkP5Mj9Ky8jLlft/SM2Ht1hsDHomiU24SYGn4yPn4ZXs8qbRWbkGGk39fM4XJxZFRjabEpAZC6YTYYJv2hbhSImWjtT3QiPZcus2KGrqD5C5Fs02EWNY6BA1B1wkgwBpeJnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782751714; c=relaxed/simple;
	bh=8jARShW7gh8HX/TeKvMN3WS5GyaEMl6jAlBnuS3GUxQ=;
	h=To:Subject:From:Message-Id:Date; b=CYnTIOT1OLTEtnjJ33KtxPua/TxMVItfgcr2Vr1enKGBs/PVo6pi/RgWui5HZz6UTO52iUQUXf0tSKW5xSnGndoq8+z9CFgpx8gUCoIm9Qp5gA4r9pmXuaYJn/nu2+Qgfgc3xLAm8Y/DouefJMKcC7WZybt8sjPf40OM/xOEv+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3jRoCg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3jRoCg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A7CC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782751713;
	bh=8jARShW7gh8HX/TeKvMN3WS5GyaEMl6jAlBnuS3GUxQ=;
	h=To:Subject:From:Date:From;
	b=M3jRoCg/v147sNTqKLym1LnM6MMZzK52uKSKMI3idDU+0pVLx+XN5UAmB0+dBt6Aj
	 6m7WTUSMeE671UcVjdrgeh2w2mw2eGOa22ttgY1HECaZWU2JbJKt1rkMa54MQBwzRW
	 gFICsNrbzPHiUXNLTxnuvhtxVp5t6XBh/IiCEt6JEIZG2vJ7PpFWPAuH2ZPmW2aIkC
	 Jcq6SO4bqf3wq4yEpmbMPoYCbyzG8SMC+U/dVGDkDcUON7pPVjRnTkluzs6tmXGwZa
	 rwzy4yOMTTqzMu3TOc95wOrN4UwJi4/UMBEhATEBbM7UhC/AKt812hYcoZCxJoXy+J
	 3O9ypCu+xhtjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA512C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275171369.13375.18391523590340838662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68a11fa1e2bba93976d216482ce81aa17537ed3a97ca4614bfa2ed24c4a2fce
Date: Mon, 29 Jun 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782751713
