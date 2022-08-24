Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEB47B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661317252;
	h=To:Subject:From:Message-Id:Date;
	bh=oJIvytpqNbUazgzdNwaUv0ZUcfmyJ7/QMQPy/TXZ0m0=;
	b=GOVBjCxXxQdv2R121I+xQI2dNinzuWhJKAmpaNGr+XYa7WEdvfJWG+tDFYQMZUYR
	SXBOn2r9S5Qj/BkMLmuXwajAENzMr+tz9UnqJsN6aoIqpEffZvBKpqUhKreHWBCPGFC
	/rTe24R82G/qpIW9tGVs/QilmiB7xheUGD4G8k80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661317252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJIvytpqNbUazgzdNwaUv0ZUcfmyJ7/QMQPy/TXZ0m0=;
	b=jjl58UOYjVhuf0JKXAvQIz08g9sK/pjbVVGnHRPviwPZMamZiEiIceOsdFTTMLR5
	OZc+K3y0fkPpe3Fk7ncPbxBsRxI+8Qzj6/VI2IujQRgECIREcvb0ckn8BI/oMiv9VSs
	dnkCQp569BrLgpZU25J4vSNla7vyBfKVr5uVFj24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce3985e0-a7e76072-45c5-4b84-b936-82c7814bf8bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 594f090d5dcf18ac227d63cd8f4c48aedeccb7a4bf811192fb484056a267325a
Date: Wed, 24 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661317252
