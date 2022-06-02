Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA67628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 00:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654131419;
	h=To:Subject:From:Message-Id:Date;
	bh=Rpo1Ax6iq4sIqwPSbuATj5zMHuet5rBQ9rdvtwZlM9M=;
	b=PvxJRbVk67Fb/I/ulnWBWEKeNN0mPROUbbx5XXq1u5TXNAoLQjv4WnflYkqrY5mY
	rdrs9xIYSorJ6T/RWF4nwOL7L4hO6dmrRctbF0eAtvsWzAaOyJQRhlNLpvY0ML/RkC1
	ZvkeTRvDgeuqw2wXop+O+Xj9ipbkz39iteWdXXpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654131419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rpo1Ax6iq4sIqwPSbuATj5zMHuet5rBQ9rdvtwZlM9M=;
	b=GI14gbiAgIL8l26tqp54rHfPCC9DHbRP/11CRJ6+oY0qOr2qlHvWgEPI3ZpijMXH
	AYI/d8aC61atM15fsERzAGvsjm4mQQiHLx6THpSFb7d1wyhNv2Y9hFeB2Kc/2Oy1cSe
	5FznHiG727robmziZO8ALLXfJpnTdgdSe9lEo50Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018121ea6878-915151a6-0d18-4abb-af00-eef11e9bb47f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2aedbda39504cb773e84bd852a1cceb1a46b449bc57eb9990d6b80fe4677df61
Date: Thu, 2 Jun 2022 00:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654131419
