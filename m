Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BC422FE0C
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749513594; cv=none; b=o1mPC5aLcTRL+zXFjfKCDhiFClBpxKD8kCi7cx6gQfp5sL8GP+x3vv4OxoIFW2mfDnmUPYRn3rZ/2eXKfUI40hjEe+35yOruGDkCj5x1vyRhP2EkqDjXmWGo/Mz6wMPr5H1liZkUqGwqBGyhD0GY/73jWgbXNVN8qyBWdeB3Bqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749513594; c=relaxed/simple;
	bh=WmJTMCMBvcksuz2cVV7RK6FfNzlUcjWz5L5t2rWVKg0=;
	h=To:Subject:From:Message-Id:Date; b=h8M/saJY/XiLe2dJ4yS/GCjTWFbpdnYUnwfAXeiwsHZKppO2SYXG6+5Aqv7xg+4LArUDadoPdmAxxFQD6EhPoP2+uLKS9/NOFe94MDHNBrI1ywHcsG6kX0NKo3+zkXZCg1WlsQYO4x0lEVud+10ktLyv/s3qoXIhh5wkGTWCGZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrBo8RQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrBo8RQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749513593;
	bh=WmJTMCMBvcksuz2cVV7RK6FfNzlUcjWz5L5t2rWVKg0=;
	h=To:Subject:From:Date:From;
	b=nrBo8RQSJ4vYy2gX9UBTXsZlT5t1fyfUh8ZWDVqJdRnKLOobxhuXu/Ctg9jn9/gnF
	 IIqz+v2Y8Q/svataeKLG09U2yg0GzONyfVclNgQQBocK8XgeVWtslsaPoA+l/SMSpd
	 CYi29boO37kPsPrIzwwNJNkeHjRw8idsy033wyZiJrDxER/2ScgxJ/5FJydw6I0jiq
	 e1jArZ3CR4fgYvr/PgBj9W3L0OYOZK230nqcdCiorYqT1lcoXM8y7BQONLpwGarh/+
	 OebZHZvBdwFe0ii1PNB5kTzBm1d+AbIS7BHN77fyJMczO7YW79N7HR4F3TwtQ6Kq2T
	 nzNgi2AS5KTzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93124C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951359357.11282.10553662578553053463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf50f94ee971ec02b99d616531b7a278b88aabfe78ac043d9527568ecd9505a
Date: Mon, 09 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749513593
