Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36447A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645599685;
	h=To:Subject:From:Message-Id:Date;
	bh=vd7WQTcu+XlDx1AAG2EJgl6/btKfzwmxutD5BmrzlDY=;
	b=bFmlDqpck+sRgwvCappLvM9Ajv/MKLztMGtCsJYEsy8aJAdAQkkLycp8PkRzUjoA
	OS8vvEXVW7yKFCGCxnKwBEWuTTWzNXgadgxVzH+UC2s20kacvRCxXSjJwDm2pAuviXS
	9+pXZR+9EOLmfNTDGv8aCe3oCuuoaE+AvaHLlfrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645599685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vd7WQTcu+XlDx1AAG2EJgl6/btKfzwmxutD5BmrzlDY=;
	b=ch/UPhXB3UmwwKGb0xrlDG2M9DanGbxb1eUczWdEOMYfbIse98WinbHgQyY6RVQr
	R1ULcL99K6iogcN2GVhmCoa8M7qOrw2S5gd4z/nIXJ8oQaqSQjQpZRiRouwCb+0SrB0
	28NEYgMAV1sxEez2KXUcRCTPycZdFRFyLpV1G8KA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f256278f5-3065cde8-a6df-4d1e-9f24-1c644f5f2316-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b29c73b5bb7171a730353d35d71276e369ab8bdba10a946c807ff0286bd18ab
Date: Wed, 23 Feb 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645599684
