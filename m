Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87847C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645626385;
	h=To:Subject:From:Message-Id:Date;
	bh=WUAcCnlucuE0D3t/oju4Sdlqrt0OhZzKU3xw7Esv4D0=;
	b=YK2zVRATzQb/wsVPomtSXE82e5xPf6AgJXGh2RlxxfFdd61fC2aATIisDLUIGvUE
	RQUWMrzW8Az4C+81fRFZBfD3xmMFf+U+46YltWbdNhIf/Ozsdv6Isl58WMhFX/oGkf2
	w5w6sAupyrwIawXgn4Zy+3Cjj6QJo++hKwEgFh+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645626385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WUAcCnlucuE0D3t/oju4Sdlqrt0OhZzKU3xw7Esv4D0=;
	b=XzKiBtdX0mGzenjyQHaHo+UZyRycqSGnzkFaBzRK18Ug6tikPFjV4Fn2WU3nnB7B
	v0ScKZlA3YxdWj3w9FlZQrGLbdscIBDzjhb3Lb/GRJ1AoFpSism8Ct/UDFB7lc9ASdM
	2KaCimQfT1clCuKIc69d+328SNCzIIu3GyBIm/j4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26f9e1bb-92aeadb3-4e06-40c0-810c-fd5550d5846a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0839b42dc3ce35214540edd776dc781a47e5629137b5f4143d5830c20428c2f
Date: Wed, 23 Feb 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645626384
