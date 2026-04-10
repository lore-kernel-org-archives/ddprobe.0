Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A0A2FDC20
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775820454; cv=none; b=dKoTZEKdXB5hzJgrJWoel6UmeMMc2O91yvzGFnT7sI+/s/9bUpcKGL6ovQ3M8BbI8WKfiJDmfb9TW+HJk8T3E7aO96ooE5jLaTw7SCEc5OIQnFrYf68Qa39SjR6fFInI8bfLSdoM3Bs3lAyuRY0pqGDB8sNe3oXplQfnIpWnGCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775820454; c=relaxed/simple;
	bh=DxWYmX6y6r0eo5esbBCt7/6KGqTdfssK4dmo2rxHbHQ=;
	h=To:Subject:From:Message-Id:Date; b=PAN3F8U0U9LKkwgiKUJrfkn4LoTvaPbeGqpE+Uv8ZaDZ1XeL/Elr788aeY9xK+G6JeA/f8bE/lPxoeu9m/6ASX6t1CcYgf5TuLax9tt0JXZNiYswsjbmQlDvuPLFWEFvxt7JgZKNN5u5/ByApgFC0cxsE7sESXtTcKQ7cBaKbEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj0IrYGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj0IrYGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D76C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775820453;
	bh=DxWYmX6y6r0eo5esbBCt7/6KGqTdfssK4dmo2rxHbHQ=;
	h=To:Subject:From:Date:From;
	b=Bj0IrYGr6AlA0xF+zMf6BIGjviguE0aucScnP3HTxFQ+zU5DVdTucGLe1L/4T3hXx
	 cYONau3nSUsdtfBb89Hw9SrKNVNtr8pZFEE6pa4RbueNt2oUSJe6MOBKvxTdLI5+YD
	 ecg8Od0EgHa242tWyFPsplTadnB+8udsjs1XGeCx3rfhr7iBStH5rhVv8NdOfaqTa2
	 sPFoo1SC06kmn840vS26pND9irt3Rhsi3OToFlCHmXgn1oUie8CM8DmpBAtzOmVNvN
	 BQOVC3+74X2IxBUNpMrXzbYa1JuvUnJbNCtKFo5x2f1gzLh23EEqiNSzeiIxx4oYAR
	 FoSiljjBDt8WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE2F44840
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582045368.12901.8609079635164588481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f96234cfda4300931eee78d5b0546be04215b4bba822a6f9726164a6aacf00
Date: Fri, 10 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775820453
