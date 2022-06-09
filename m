Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074F7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 21:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654808819;
	h=To:Subject:From:Message-Id:Date;
	bh=LY0AK9a2BZ2mk8oJufUtOdPVZcWuZWa7gNXUPpqs/E0=;
	b=BP9RtdTFjDfeBrIgTSzJO31/7j9PVHyzyty02KaXklYpjXG8t3zcHQVwu6s2pzBw
	3mC5ns/qN0uLxFUXjDWRJz/RF9yhTf9ua8J4yZCKma0PVPvNfWqTDXrMPiWbEwd3Wbz
	HbD9oga5nQsqmQ8Va4yd0KsE5tzguhB2rrEfCIyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654808819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LY0AK9a2BZ2mk8oJufUtOdPVZcWuZWa7gNXUPpqs/E0=;
	b=C9SFVcvTtI5LeaITvfF+5L2NEJ03ou4EOGpoToPRUI8fMddjkLbS6k30SLPuNTIM
	mSgFXuo8cygaxstMqgMoOmZJ20alkxEHbcLJX2CgJ3W//IJSoO++RPl79zl/kznCqTB
	ZRLzJd6h3J/qK+RbtFtHBmInVn8LavajB5/f7AYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a4ab627-87ad2cd9-c394-45a6-ad7f-c034e9ecb478-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a47f42564308b27f073e8d6b99481f468a34e0d310cfdf3e677f5ca41f8e974c
Date: Thu, 9 Jun 2022 21:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654808819
