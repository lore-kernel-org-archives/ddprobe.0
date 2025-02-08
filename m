Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B515A41
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738982154; cv=none; b=Bt/lnaP+f+1nQrr06TSyFRVsJJfAQL2wLGQlBy8Kl5ZsaE7dgy0BaJPSPF3iXu6PqN87JglJxwDxNoVaobiAUF57rfsPXADkxQvzNSrKGnFWYUmnQGzS/ufiUxbXX75cbcoNVR9h8LF5Adp5z61KNBAFg0kGId1Fp7h7sffY+Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738982154; c=relaxed/simple;
	bh=SmAzRptkxbSV7XYjhG8VNt3YYCmOk4lyqUlcoJKX/gE=;
	h=To:Subject:From:Message-Id:Date; b=Wk2idgfZkudaQPBQBZOTOj7CLXAQOW4kCzQvsklzMV57UsUtfv0dpv15VMlRVgGZ2wYPC6avRVg7qWyMWsm2VXpKLgoMpq3rVqgIb1b6xYJiFnvtN1HT45k2LumX8+xslJhI7ObACTwSgkgdSvVu3XYqUNa6+8YvMUCFZ9SCLY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8mQ//zB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8mQ//zB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AE9C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738982153;
	bh=SmAzRptkxbSV7XYjhG8VNt3YYCmOk4lyqUlcoJKX/gE=;
	h=To:Subject:From:Date:From;
	b=n8mQ//zBXkifv7yCwgdX7rboB7N6WkYxyieesako0dI5BDHdzOlMm2+UiztJ9NDrj
	 vUefr5V8Er05tWJSd9gmWjEt0UTZ2NZ0+feFuMn4gmmC7UcbFfgGwfu5dsHLBz5FfJ
	 EgtNPxgJ7IwoB8QE7V1phZpREW017WxaLISWli5Si5ug1cMqLzPkjwOJJb3acGuSZE
	 bwoVVnTSkCXaKHj5PQe8J6XwVm5wNnylx4t6iplU3viJ3t/xc2fvWgWzRbYzlX5VCu
	 H0i/QXmvWgEOmAuT7BfFRwWA/y6N3tX1JnJa+etUDu047KTU64Ibdvhxr9/msd1LIt
	 xEZzzJR2+54NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBC1C02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898215360.15500.13615239859903587600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e9f0536c0be5e7e1143bdb344d6a78a138978f371c4f66357b6e19c1ac8c15
Date: Sat, 08 Feb 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738982153
