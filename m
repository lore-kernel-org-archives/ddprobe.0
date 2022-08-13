Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5D4257D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660421452;
	h=To:Subject:From:Message-Id:Date;
	bh=6CiMStdrtc3rZGJ4HG5HOPJ4xV5mwkH6B5hQr2YvnOI=;
	b=HLtBx8L6jCT3tAlIM9WW73+qgufVFLlMvT9P59NIE7fzvHkNPIJW9OxEd10Cehu6
	EQY3l2f0I+Tp8zH+16AuR6p+4PsgjzD8eVkbx3vErvVj75EXx6CuV4/+ehXVrOqOf5i
	p8vWWIup/ACas5GZtuD3royzqX01sylyHWmMxVt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660421452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6CiMStdrtc3rZGJ4HG5HOPJ4xV5mwkH6B5hQr2YvnOI=;
	b=AHeR0arTCslhpPZv8PaS0AZ0AGju1ks8t3BwNYNpvJ0/DeLd+BgEPWIpayO2nPO1
	e2TdWYZMC/7vwZyBqJIMfX32A5Lw2VycIewqe5dOl2U7KjJiwIbPMtGTLstvlmtbRsB
	kdKrWAVZduY7DWQ0W4o0BKwNLe8yUGLLEfpjIBFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298d4b30c-335790cb-9230-4d89-890f-f0658ad44e7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f11db7751b12ce00b6364f929883d564049d6201a9371f633d4281c7a46408ec
Date: Sat, 13 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660421452
