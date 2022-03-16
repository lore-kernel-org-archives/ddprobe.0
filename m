Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AD12FB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647463285;
	h=To:Subject:From:Message-Id:Date;
	bh=gmbQH7GBp9a32gNgZBZ4ciZmUp4Q4Upz0oKDb3P7V5w=;
	b=HBNLPGGLBO9chcfpYhZ0qiv8UkkbNDMvJ6GSg0dbuMUM1NENHWV8Dk7L1BzQ28qI
	I4XGUa2sooNt22awIbDKCwxoxUEmvBiwKGKIaAiL0jafhnY2RIEkYBwNitECDNdXpwT
	yz3Q2gcqh+fp3Ll0bGm9PN73TdJGbmy22QwzHZJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647463285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmbQH7GBp9a32gNgZBZ4ciZmUp4Q4Upz0oKDb3P7V5w=;
	b=I9gYBDQ8xyv2VbKCgC+m0X/JF95sk7a8X2LOe1NR5I2cV78849gCPJAc7kPd8DHF
	9ZKyYIxJhSDUB2FjAkeGQyochm53cPeAJveHltIOBY3Shsk1W+mtWVo5GLgfHnb5fXI
	QSJE0vxYHMGulK+QfSu1ubD1C8jJyaXeDzl6FBJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9476c03f-387992c0-2198-4a18-b841-eb5c365bb956-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfb269c35c937cdfb6cface92a87a0d02dbc3d5616f15da82e6f7bac2b6c472a
Date: Wed, 16 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647463284
