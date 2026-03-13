Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206922BDC3F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773366894; cv=none; b=nzB684nsWw8C0xqA1y5WqYWp3Z7LP1Xb44CsL+azF72LGiCcYYb8ttxjh6EivKb+/2NASYwCmYyhm3Uy81KPQjlldZuoPvLm7mbrbj64iByZgVn2vGv1bokuPk907+62iYm9ZEdza33b95ru7sWkn0H9/Fxl9I/J7Nd2Ed+nigw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773366894; c=relaxed/simple;
	bh=gdBdflK6QA55sFCFHyBqINaOWkl4PhX+qYwTjBSkmSQ=;
	h=To:Subject:From:Message-Id:Date; b=OlrndopjsobXdyVeeU7izLMBQ1xbuRMM9tBi8O9lZMu/KvZR5IDikL6/krz51xutmxqk6wdVHKrSpLxuJ5Rezggeddg+MewHCXrnDqwHh0LLT3WYUiB1FxKdlCea1SGtYs+98MT4LBM/EPJY0bLteu5HGRPAoOntIFAeZX9Xv/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOgjlXvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOgjlXvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773366893;
	bh=gdBdflK6QA55sFCFHyBqINaOWkl4PhX+qYwTjBSkmSQ=;
	h=To:Subject:From:Date:From;
	b=pOgjlXvMxo9ox4FNKpTe7+EHDSFMKOBCmCB1a5f9GpR+Yr52Ucj4GjIXcd60V1eJA
	 3j+AgxDHj2fgKp3LWbYg8qiebtLbUWyVEFnwP2L5GdD3rdBmq1HCSwO1GHnFzzE2sr
	 JHBPboYJzsxP7/DLlNBHWJx8tcJvok6Coz+0NCC9uhM9e0adHFj+GfTwZNcT/Cyops
	 pDoLGXIKzOA3Om/NsJDg1MjZg3fY+L5wuQjYTxkDQhIoU2/yLh7vVuzmPa6eehzBZ8
	 Aa99Z/g12sHyvObUEWsA9Vp1yDWg1KlPnGdydzbav23AdlRCS7ZrSPs0ptERfS86Gv
	 dKE8ULdbpNiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3DF106FD60
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336689362.24173.8476169149904435569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148656c84c231e15cb7315a69221a1527ca9281a96f87330145119705b5bdc5c
Date: Fri, 13 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773366893
