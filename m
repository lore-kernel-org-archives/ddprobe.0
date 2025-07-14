Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8D161302
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752468594; cv=none; b=VFvzr/CWSOuD39PzlYraxBoH6ZEMQq8yPs1i4jsFR9Ecn7jbXMm3D50oCPDljLkH9iEPv/vVQeKUrEWRY0E9/9QzX4D16I2ueXi5RZWh/CUd6c9zn1sXXc885cnucf+NDqxwgFadOlxwZyYRGB6oBeBAESVO1+pLZG0x5+PRZH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752468594; c=relaxed/simple;
	bh=tFGOPD0AzjAn+SMqjfXVO9zaArWhixZFBhCccfYxs9I=;
	h=To:Subject:From:Message-Id:Date; b=K8pqQiU89Rp9+N7HKhFMEokE3D6+9AFFSyw8bI2/70gq8HBPw4IBI8xmtGdgMd072Hl6r+TpOyeCWWpoZOjciwG/bgkgm+9QAJwJH2p3b1hO/4l++UDc9N6lUeqLQkuZtfkRZ1BPv4CqKzmx+iNMVSHjBNrjkFHAjr1xzqSF1sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL9Li/X/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL9Li/X/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5463C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752468593;
	bh=tFGOPD0AzjAn+SMqjfXVO9zaArWhixZFBhCccfYxs9I=;
	h=To:Subject:From:Date:From;
	b=EL9Li/X/uFAGtiE4lwLMcEovRWrp5YVu4v75d/P6sOkHYpMWVisKJiWARspkUIFPT
	 xdr/j8D+VXeroorCN+948Y1UKiDWOuugHYVOyyABwjdJUFbQ0aMUq0ZMjVOnNDpw5A
	 8wapgQQs0xX+V+2U0gFUZW6Xvv/uBZXPSi8jEaWlXavx2CGywyEsPQ8KqOR5XftKC1
	 klf1lrDJn7MM9NSiBYXGC/uZpyOlb6SwQzQn8Cn4VxQfzFIXkw8J3TH4iF3ntm0V2+
	 FQq//xDGoDeE45I+FKB25ihgEv9eeGbuGdMp4i+bfexuT7E4S5pT3nkKNnW2wX4bbp
	 JkpQ3/ZOQQQFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AAC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246859357.13798.1728148669525287618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f465fd252d9b3d69ab41824c4cd36a329a1052547fc7b2f5a8ce300cb0fdeff3
Date: Mon, 14 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752468593
