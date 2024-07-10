Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B988F45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720584983; cv=none; b=doPXvPsYV9YFWbOdcurtcHtpGvAXnhsOBIDuUqSXasX8HXM0WJHr8gQEwZ3r9aWrNVUSMfx0bzYC2Q/jIINppiDKQKace1uVMxcqwPCWLRnDmmHxCeckrhIcq4aWR0LzDLbJ9DZy377SsUazJZ8Fev18EdRXcE4V68NJGNDuFBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720584983; c=relaxed/simple;
	bh=+SMLYqA3B4A4I1S3f0KwN0xfKIBAPEWXb10tcaz1YQ0=;
	h=To:Subject:From:Message-Id:Date; b=l6BFlzcS0y7kiJlhPYK7boq+ETtmQHSvvpcEvb/3XlO8wDU9EGLUtz1AxysHOKP8MHbHNWJb3tEZNw7B4FGaLc4Jmovh2P4+0IZSYZRGMjV5iGnOeJcDY06tdqpXq8ZC3oC9y6P6etfTabeD2COoZmVkef9AeNZ1dD0VahCyta8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEWRnKGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEWRnKGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC7B3C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720584983;
	bh=+SMLYqA3B4A4I1S3f0KwN0xfKIBAPEWXb10tcaz1YQ0=;
	h=To:Subject:From:Date:From;
	b=jEWRnKGcFwwGUJhk3bTGdhoC6lxeyxCOcZ6UudQpc+YItOWQqtK4jjem3cHBXy8Qm
	 bccg5NCKiTVFqhkSNqi0eJKzv7JUfmoODvSNSUBLon0B1YCTX0XqAespKAwJ1ORWtX
	 miCdZLejiJz4ZQpu6tjCvNeHlRIL5dHKENpkbxOvj4sBk/H+F3n2cmxV6mHAv/Nq5c
	 2Tizn66+lzRBm4w8aZhLvoRw2MlO2cawrNZVwAQ4p9xtYl3+QwB5e+qQQElewba6L7
	 BpXT3EguZBkjgfXQH4PUfCtQgS9fQ7ioz9/BArPMnHsOC3CjLICdqCjsVdPBDwRDpW
	 tk4MdW/OF61pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEBBC38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058498282.23883.5413980396795312939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20647ca15dcc2f68c2e2b7e03c02b0b2c83d5a1340ae9e77007e238b1d56639
Date: Wed, 10 Jul 2024 04:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720584982
