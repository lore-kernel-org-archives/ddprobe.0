Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC7327B33B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759881594; cv=none; b=KxBTsImQ9lNasmPCoSkQFnSn1PmeZ8bJnVhCvB49Hs9K93oTBi1PNNrr/y+SKnkfiHu5Uo3Sh1RAOuWHnUsFkZ7WlbZJyQwuQB55MqqaH8hhmw1Gy6EuCc4CmbVlcrHn5Y/oOUNUpBu0KW/R+08lEOesqTyoNXioLjPITYGu6Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759881594; c=relaxed/simple;
	bh=Pn1jQeNOwuqt/DyiR3IJ4MKcxez49Jt53ag4w0Fai1s=;
	h=To:Subject:From:Message-Id:Date; b=u7gHgngpKHxlQzL5nmjkNIgm3IqNl1c4n8t+ersjeIn6eVe+RR+EOFQCf3cHf0VlsHSfEOPmxZzKA1RTgvcfqVLGtvRbekolJSq1/Ks1Bi5e7eGnwu4Yun96YABRn0HcPewq2JaxA+8lKRqqWMfiTez3EQuH8jS5lKNLA+HQRKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9HW7PEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9HW7PEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2676C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759881593;
	bh=Pn1jQeNOwuqt/DyiR3IJ4MKcxez49Jt53ag4w0Fai1s=;
	h=To:Subject:From:Date:From;
	b=i9HW7PEdjrz3N9ldyQEophAt4n50jXbbk/wMJoJQkksTApLqYrFUqP+uhKPOHUaCb
	 OYOda/C0Xl2bmGcJRwdj+T4K8Y2/2FGn7pwwl7+zVCkS5CbWSs0/Mvnj3gU8Ny3uau
	 jjSbQxMKwoI2ouaKrrAbHTW9rjmEvzErQYusvM5WIsYsircrqctYRhjVDFdWkClCsZ
	 6Aoc2ms1D8Dwiy4bZCOcawP8GfN1FXFniRA+18d5eludnbvEROdAuwjOfAnnK5mA58
	 vU0w1cBAxRSvWxEJpLo/Ik8HWfL/NrKJXeTLF7Bbo+mgbyX69gwUBNqCjh0YT2sjil
	 oBcaGDEYX//Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062FCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988159358.2306.12106648200174884541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0ba3506203ad39b60fbe3d9a2e08fbb3269c43c69ac1e6931396a3109c0e1d
Date: Tue, 07 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759881593
