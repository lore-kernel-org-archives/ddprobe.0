Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF52715A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 18:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649961538;
	h=To:Subject:From:Message-Id:Date;
	bh=RMI0gPuY5xwLHQXRiQTa12VOfyn8bawqUe/O6MI1UQg=;
	b=DybMBZW5lbGw+05fraqAAg1RFexN8rd6f3j0fQhZwxE++EcUYayDbhbXdOavDgyJ
	+MPHHfU+VqvLk8ixPwBK/gghkeRHspdQxeCzRpp/k5eKs/6/zW9nqlgfsTTwa0Cujtw
	x3NLYxdDaiPoiZopqUiWDPTiBUtKtpdgZeTw/8r8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649961538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RMI0gPuY5xwLHQXRiQTa12VOfyn8bawqUe/O6MI1UQg=;
	b=CYnnbtPNB50+dRm/KNuZFqHWp5Ne9gA8c+Fa9nasJ73rtazdwyJzuXYvJ9+VZx03
	2KZnJsTMTqVDGhsw7PFgg6P++AWJy/t6ilSRlgnXF6xXoxGSG1ddE8jSZCuOVQAxSTq
	S2eM1vPuFfKdeNl8fFy6EgqXI7CLCcGmefSLcG0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180295f1300-51d130d2-9d68-44c8-868d-b4fd0dfe2431-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 958ca918e647dd021f6775fec495fec86501d6226531037352f49b3efcdfb735
Date: Thu, 14 Apr 2022 18:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649961538
