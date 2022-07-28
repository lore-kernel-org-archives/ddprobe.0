Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C709EC6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658970652;
	h=To:Subject:From:Message-Id:Date;
	bh=uhU5sJHj03v8l3Sk8jDjAOEHU9RtgD+8u5cLeddcstQ=;
	b=IBbMVbpc7PR7+lvC6VAk9EmW1MQE/GhyjdHWB/zannDGlgtdE//j7ItaHtHSZ8Va
	B6u3dAV7buAaVHQcw037RoY/UlRICclSEi5yM5jpZzmFp8aK6fCrkWo/ojv9iqVksHm
	7MypJ4jisCAgFTcPv7G54UhS8a/e+gyPsEDaFgNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658970652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uhU5sJHj03v8l3Sk8jDjAOEHU9RtgD+8u5cLeddcstQ=;
	b=DOVpGO4VFo6ei4WOdC3kG3rIgSllsWXkyfSLQhWpiSpR5d1Et+LQxVQcZzYsIg2H
	McctUb1y0noWGe4v3sB1TjKkslG8xG5JFArYHTsYmQp8VKBRaXPIXtZFSX7IdUxzmSo
	rGE+UTWREIDNUEz9Wlplj4tTsXAKWL47d21+nT4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182425b3f9e-69f12f0f-babf-4b9e-a065-f1c2b5c2b8df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bff908d324d394bebabf2a028b1a3659437464917540da8d20460d701368f9da
Date: Thu, 28 Jul 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658970652
