Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B91256E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661263253;
	h=To:Subject:From:Message-Id:Date;
	bh=3ScLsYmZh+POKj2501gt8UcuUgoVhGSK/10OzzRPxkk=;
	b=GNutt+MwrpLoFp0702Jv+vEbjrgr84btLlWixplz9U4T5XSe9/i/sTC8pSWB9owu
	pAR2Q6MfDyuyO9Qo6qMQww5bSo7IHwxLTHfufWxlERtl/jX/GSQ/OvtApTE9wt4Sm+J
	nEePVjYA9zTxRoKZxgkpteoFCoDKf8QMG7nG0oGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661263253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ScLsYmZh+POKj2501gt8UcuUgoVhGSK/10OzzRPxkk=;
	b=JpAyKr2gktRIK8YNutpb4xHzD6dy0HoQH+n3ypBl6VgLgEk9ka9XcbscuqhqC4q9
	cdKLhaTr16GqTgKzrSDrga9sfxhbTFzdDQAFdUf6/B1umpBBfAeEryK3EE+EKXaNHIs
	QgsU6eRfZfzgZN1zR7gYuYxqzw78jaUbGdls0jOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb018c38-778d18be-bccf-4b9c-8535-d9da4fe47ab3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4385acf2ee3d857545963ab7e922ffd6abcb0df2fa4766d8d45709f2ac788710
Date: Tue, 23 Aug 2022 14:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661263252
