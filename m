Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C543EA4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646393784;
	h=To:Subject:From:Message-Id:Date;
	bh=k6XNG+SHis1AkX2CpR6YOKCp1OyegSudfcLLrFSQ3Nw=;
	b=gl2shq9cd280rMXyZGWny8or3u2zXk2rHf+KH0FzoHHf3HgNr0fsB9gZDWvG7ix8
	QvtYq/lmlCKg3XzIiSvxMtYUS5Tm2r+MHoXo5HqFzElQgVy2imi8J0oyj/6GbKBLyXi
	UFgTedjFvWt5grz2hc2IuO3Pvv5TSOi2ZE83LT8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646393784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k6XNG+SHis1AkX2CpR6YOKCp1OyegSudfcLLrFSQ3Nw=;
	b=Z5vBFptZWop8GFUzA+0EJCO7yy7PXDyTJ+k3k+hNZTHbt9fQi/+BeW4TQHo1KZMp
	E2GT45BCDtlECg7vOLP3hjopBMN4lrSU2BD8WUu95xhWkmVrCj2oom4HYMgm7zKL1RY
	dt69MI/CMJgSG/b4H8FUnaistE2UTQxPK7w3AcaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54b77998-db58cdef-a95f-4c4f-bcdd-f55af40e6dc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bae978a641178c01eb21954595cda5532fd5f47e4ce7594496bb43e57437670a
Date: Fri, 4 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646393784
