Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FBD1DFF7
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766943834; cv=none; b=bWUI4PlyWAbx8D2VTqpUhZjq4UcZSncCVOIEST9QO1a7M9tRRW0I9Dd74PtpxnQeS0C5EC/I7ZTtVCSoUUJFZ/YDHgVbnRLsHmv7pMTnwrvnOkTrqW92yAUNKnk7v6nHZaZUtEur32Tq5ayZhs8xiFmT+QEvkE8hDwjx+hlW1Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766943834; c=relaxed/simple;
	bh=US+XXHu4Yt78Z+GUyFMJGq27vdqluHMoi8VMb5qFLpI=;
	h=To:Subject:From:Message-Id:Date; b=B3dOWug/WZjuZ+iHnrmGF8hPgKO262Lv4z0uF+E58r0lbG3gVxNcUUUQRraXI3bKvyhwvOAkc6kc9T181nwTmh1Wox0hWYhGmaMVpopfXrmQKBPodQcxUsG7UnRDJssmzsVcnZ4Xw1ba1ChIoPFeNlGm7P5EiWh79CSYPobDJiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDYIjy6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDYIjy6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20FCC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766943833;
	bh=US+XXHu4Yt78Z+GUyFMJGq27vdqluHMoi8VMb5qFLpI=;
	h=To:Subject:From:Date:From;
	b=JDYIjy6H++iNdKlNTEFKi+07OelJWeTF35VW00FMGKdJKkBEcsvbZjPHvwvWeH12Z
	 6cFWHYvKwnAc8yTtNWBJMZrmolYBAci80k/bR/xKZPyogXpDPsRfMGq888XEAe79g1
	 3QkWgIJYzCkpIebwzwoOqkhfON/NkGG4+OKY8+Sjaq371i8cpaCZB8U6ArP/qUHdi/
	 AP/vTeoBv2YwyPlRFuWx/HErOcu7ZjblrqiYDWp4bx95MATWVsCZ3muAQG4XH8k/E3
	 s1UuqvxUxWovJUS/s6RjSU6MtFefqA6D5G92uxfKqwa15nq1h2F+Ws6VK6ytyZAo8h
	 wgBh0CkPdFZWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A300E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694383359.21357.6376092337950116661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df8ec38fce9d7c87f98b98411a82ab1228aa2835cb46c04dffa09db187870a5
Date: Sun, 28 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766943833
