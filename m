Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD98A749C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774368893; cv=none; b=R/0M3a0O6ztWBm5QSjW0x1F2xNgCkbTfSfhhE698Txy4ZeO/wkpSCjXTjGVwO1nL+PUXwrn9yh6q3zFBT9Ybhipq2jWB9lh9pU5GzFAd+tBsbpyWFrDJh75lTUdMqJsqlLzVmI36QLl3Fcjo3OZry36vk2QWU9vXFGdsjTeDZ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774368893; c=relaxed/simple;
	bh=3B6xAY7Tc9WxhN5lFAIGokIT8jUKGNCHRVI9Q2hnK78=;
	h=To:Subject:From:Message-Id:Date; b=GVj8K65NNij3lAILYu5sUbwPf5Dut7INWP5s7xI0T0XGXnV8h15odu896ZnjYpovGvOKa1X1oVoQfh/bk5v+tGEI7JGuDMOUIh30hwZWiIvpPp7q57VSSAUF0LXF3WpPdj2gdK0idioG7x3nYexI4aYE4Zx10dy/OYJGcqQihVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY+OIXnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY+OIXnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774368893;
	bh=3B6xAY7Tc9WxhN5lFAIGokIT8jUKGNCHRVI9Q2hnK78=;
	h=To:Subject:From:Date:From;
	b=cY+OIXnVXfSODdOjg6bBd8jNWUy7jdRUf7SSWkekq64t8D0X3yxYq6z/OTGdI6qrV
	 mnT704SqJHnBF1QRiImy/ialU1AMRNG2bp9dpQRcFV0Jfn3iwdf4bvrYPWvHvDOW5X
	 D1bFEhcntDPDpnj+T7o0JgfRlGSBjQjsBrQebluhYGzYG2n1myP/YNupUaacVwpd54
	 4khK+zxu0qDog1x1RmedVqG28vr2Ry+7ywQI2zoLf3S2WokTF0xKTikA6L5UEZ4yNz
	 zJJFLROgKYuj8Oy5djlM34WHACofQDkFfrq0UJAaHSrpGeAYo8XuV2yKwVjfQ1c54z
	 96yWCjVRAnJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91704F54AD7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436889358.8313.6276290145359723792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e97c160a90193de05ef353a97d188e3613b8fca9c91376d68611e62026a6dd
Date: Tue, 24 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774368893
