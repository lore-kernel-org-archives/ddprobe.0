Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689C78485
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719641663; cv=none; b=VDRZw0q1N/hntqwsiQM5FiZ85cI0CWAoqpFp3U6eqlgl7JntANiKVAEGem/xt6SNpXu/fdSQG1ZojuIEi84MpqHNgaJ7GbMpi6WgVSBmab2vYkWS8D+3gFgHXPNfkR69xqqbD4nFCBIZAHi9SN3NSVa3/HimUla9HalBtNdrdYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719641663; c=relaxed/simple;
	bh=btAWovJB8CHYJSTW/VRIni6xU3X1YGxbIZGo7BYelew=;
	h=To:Subject:From:Message-Id:Date; b=J+GuZeYEnukTg7pKHv4IhlnDYotlPwz6QycoEbGNygxm1ZZ51vRW4KUTHqkNYdl5lYr5+ooMCurJttGjqY0mZkhRb1f0NsaqzYUAoFrQnonPVYJ1zTy0U8fLzR2t5y4wEipgsDDwBebHJ8nvjNcqY+g+4Ih+0QTsSd7KlWiPWVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNbj6Dyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNbj6Dyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2109C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719641663;
	bh=btAWovJB8CHYJSTW/VRIni6xU3X1YGxbIZGo7BYelew=;
	h=To:Subject:From:Date:From;
	b=GNbj6DyuG9hzBs/IvvqHxfBTOzvWALI9bR6j3SzCwEUO9cdlcdPKqYCGS5HBPVGhV
	 AkR9QLnUqgUpQ1w4EcsGZSsPUXMR5CsYQxumcnsmFNDMJR6dis+llQGsVyRpsvFcOi
	 6N6s8KP29rhKSWQhj1/TX32dIartwdWMjbTAgFld4jMHap0a6Usb09Oenn56EVv5X3
	 tRqXT/5w4WyIYQXZPYlMvwQPY6dRkisEFlWzYBsGStiwEuLJYAPRdKtD1k4JqQY2Pw
	 pitBK2B6MYUkOgzHRWUfzPBhE2oYtjAEY1vdydqEfr6+B+d38DEwuFjCBG8YKlItmH
	 f/UZu6/YMjyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBB62C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964166284.26877.2164971180962235498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3376acc8d230d05614b2f90d738bf8f0eafbf9ddada0b221bcd229de73c2d1
Date: Sat, 29 Jun 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719641662
