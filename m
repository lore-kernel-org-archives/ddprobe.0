Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798AB1AC77D
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718889623; cv=none; b=mxCxDVy0tUl961VhIB27be8Adi6Wxn1XicVkCXNa+WKUj1mK9M/Uuo0SGs8u3D3tkmkcTmcRGZIQYgDoJCl19XghBhhQl6cgqOKLWeNTGmrVZfkHBm8H9UL0ISVdaFPtRFCJ1xA7/8Y6gwUoURTsqc8kJU4BVPRQJy+rKon63FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718889623; c=relaxed/simple;
	bh=q+lOhfOXYCaEiaZjP1L0adLkhVYwIHm0qs93uVI/wvY=;
	h=To:Subject:From:Message-Id:Date; b=HRzWhtoJm6S2vdAyKCkVyWE7ti5v2ldTs0oivu6m1VAzIgbS3jO70Qw1ILNXB/GMbMl/VADMnDwBZi49XS+CSv8LM+3qD4lPWm92ZGn6ztg53TJJrc+rC6dRNarKOjmhAVkAAzgkFh5oDB7F7+s3v9iJ/aJXv8o09RpdECVyEhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8PJFqWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8PJFqWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8689C32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718889622;
	bh=q+lOhfOXYCaEiaZjP1L0adLkhVYwIHm0qs93uVI/wvY=;
	h=To:Subject:From:Date:From;
	b=D8PJFqWww6NKBRxUlb3S/+21VhH2eirY88cHu8zU6aVSUmtKTc87EfLK2HxzTumpl
	 PWSNnc5RGHAYB/TJcMKbUsiSHUGcc7aPgZe4xFc8J4T4Hu5wXo+vojQ2WrllgHz+b0
	 TQcCOznVvJe1GSz4MYAQr4WeC5PyQan9/7IlBHi4W7P2GcMI1wFlxYG4cCOnrMue6m
	 FQh6gBKQtXNH5NegcldjM5HFoekkqFN3bsOQkAhfPU1D90V4RZUpxB64TVSt9RMijS
	 gniMskUcd1itsUSchgtHEEQAlcdOS5PqkjlWpW0ThVn4y3RNgeIp+3IsYjlYgHmFvv
	 A0mA/J43/vZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA29FC2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888962281.22616.7847271405844732473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11511d01272bec317e77a271315b693f5dd449133f56db4c936ce1411c2ac9da
Date: Thu, 20 Jun 2024 13:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718889622
