Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92E37E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 20:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654376339;
	h=To:Subject:From:Message-Id:Date;
	bh=3umRCdVSpUGjJiQwtHrCY7B41zN9jZxH7AC4WE8AYEc=;
	b=DDoo1jG7a87YGCbcDsdiepsS/CDAX/Vy2sFm9rZ97BBItZVA+lq10h8tvZYlZKut
	9LYNmNAk5Tivqnrz/ZIr5iBfas++2JIdKNsH1Gq/F6ftCXIPuHmhgCg2HMZji2WOjrf
	VMd+lQmvlfrAA5I8tADnwHSZD3VMwXxjkY3TjGx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654376339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3umRCdVSpUGjJiQwtHrCY7B41zN9jZxH7AC4WE8AYEc=;
	b=NOeL7O6dO68ljmBPY9tVnbwTIo1E6qkS8DhzzqATgIjkdqi0GEMChHH+74fMf1zS
	/IQuReVxu4Sy8HMMntyXQ7rMyQR8mStOGl5krNriMwWqvqFTwNNDanHxPl8TaBR2LUf
	nRFxtuLDyMngm4wIFVVnRqYDmTKXmtOGWzGVgerk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813083973c-3c05b498-8d94-417c-a53f-03b878502393-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 456932def09bc061eeb908bfeb0e0b5867a344b393f4acd98ffef292d7aba5e3
Date: Sat, 4 Jun 2022 20:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654376339
