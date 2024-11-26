Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C421C5799
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732639554; cv=none; b=uMTbc1RNxEiM0NV8fqiLdtNSApZW9dg7r1aKNhO7c07+o3bHep/ynb/PaH+oItzoTUq0WBJcRDGzjH0aXfa3VCUipM4UFwoT5+ns7uR+x4vTpUeuhGD7/cy8U8bw271O70b9saYO3uFmNGbaTJ9OIumC3gjKbCwMVzn+ngCljBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732639554; c=relaxed/simple;
	bh=aZInCtAfNwk4i5+SFbg/9BxyMi4b/M+jtxJ9u5ns1dg=;
	h=To:Subject:From:Message-Id:Date; b=LNml3E2qIQGuYzBghnsMMbosSEqsg6AWZ+RKT1oJU7GIJ1YNYo29A4YMChziPx6eyyOGswLp+GRE54Na0Qxb/9Mps4t/mFcpuYljgUqfWghl5ODQWXBHBXnUmkULU+wok+neS8mhkZ12zxPgYyLNM8OPb+Uufns/iyLZMV7iyxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaZmx8zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaZmx8zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B580EC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732639553;
	bh=aZInCtAfNwk4i5+SFbg/9BxyMi4b/M+jtxJ9u5ns1dg=;
	h=To:Subject:From:Date:From;
	b=EaZmx8zw7az04JmhwVRrPxNo9+bWtpFMYOELTUlny0MU5B7XHwk6nqiFfqBJehNoI
	 2nDuMJe3Jovcm5+oxExklQCQpRs/MlSuX+OeCzPmuTUDJ6DNDHWW3JbYedsB5YyYB3
	 ONKjwPRxJz65xeK3Nz7S9TaDwIRnM/1HxjDfzn8iHFUAoAdDHbQxbw7ksFDS2dxB5e
	 lfIJOgB5kDF8cQBCVJF9X+++nQBJ/8y6poEkE6Mdw4Wn3+u3L1Omc7+qvC9Wnrig1q
	 Jb4GgamptLfftNgIzR3OkaG4OiW/Xn1TNVt8YUBWMUjgASPnssX4qkNo19xssbkRR/
	 utzHia6MnLpiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA80D65523
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263955363.28412.2840255116424431762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23339fccef5510f64b0b744c85737088b25500155475119b86ae08e292fb9ef8
Date: Tue, 26 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732639553
