Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FCE285C91
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770962694; cv=none; b=cbavZk32K4yWXeY/vd/xxeXFU7edst1bOyTKFR4ZdvKNLkb2XpuKMuYVaxm5PpBfL22XNu+WVOQ8rHN5Jnl0dOaEPMAqVMvlx29bOXHyD3fyIXKB6XCZamQr8tjXPsNVQ3xQyF4mKYxjA5VIrD45CHu5oOysfH8gyfzq6qRDeJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770962694; c=relaxed/simple;
	bh=OEb5mcPdAiQtuTMHqxIhWp3jdyaULX/XhAD4srHCZWM=;
	h=To:Subject:From:Message-Id:Date; b=KN4YTEmKlNvHdTRRD+EOvYgoYn2UpRses5dYrd8gBL1bGmId4Fbxo2aucOs4twxku3gFmTqgGGcVJn/BbCO/4EDorKDIikZ2hLt5tLqzkwlP9MwpOi8Rk8NdnGlLssGDityRCCv1YD4khQtaG+02auVz41YvCK1d/epUv0WCJKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmcOTzrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmcOTzrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1291C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770962694;
	bh=OEb5mcPdAiQtuTMHqxIhWp3jdyaULX/XhAD4srHCZWM=;
	h=To:Subject:From:Date:From;
	b=gmcOTzrbGvQQmMJxCP7ZF9/RtEjx1mNsDCecbWdhPHiR9Oz6JafljCQbmSnHDDDbL
	 y/mI2fu2LSBFzBkTQS91K+Tcwp5HPZncW5xkacLywbf5eSLQ1n28W0wANj4fMYXu8g
	 wCkkRizIwVD1GTsQYM07JvWHgdQ+xBPa/lXZh1i5pQ+j1aIFnFHeuLpaV9crqOFGIe
	 IlWFouk4cF3oJhfPaSZU+vHG7YyuCHViKi//71NXu5JMjG9mLwB9YgFlKZkf/JIgPG
	 o1iHDe5eG0IpUZlVyH0OwLcqxlQceTfltFnkeJMOImqvUZ6IrJYsamI3t2enuv5L8k
	 RPkS1e3yMXORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C36EF48D4
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096269380.17003.5003674466046512047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b52ebeb3cea0d40930f572925479aedf2055967f4c3bcb625e33b9306b2371
Date: Fri, 13 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770962693
