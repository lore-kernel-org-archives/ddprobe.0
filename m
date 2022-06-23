Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7602567
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656014212;
	h=To:Subject:From:Message-Id:Date;
	bh=sQ3IyhoyE10I0Ow3agjU5jxHpTdAuJQRw5XpmZOJ5Gg=;
	b=j05adTGHH4pDyI45Oh3iB3TqMlBLjLds32Cl8818B/rTEmi2aY/YsNJCHoRJU+Rh
	nvNyvFOk9px1DPOrFRT2WyKhZJ/P5auYyBsBrbw2NqMlaq8yTUS7k1MaWp/SURKjs1U
	RnBu+s2iiM8geE7KsGL2rMLwpAzUM6OY32gd8MEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656014212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sQ3IyhoyE10I0Ow3agjU5jxHpTdAuJQRw5XpmZOJ5Gg=;
	b=AWnALKO8LCd62q6O6meyPpnPjh3Nmkdfl1iQD3OCqxUdtwsW4Bbk+qsefN97fAMe
	haGYz2RhmxlpbDwjpmHFgpjVD2cgNm+YeLgJQOV87MmvKsMwpJ8Foyt/SugntbGaosn
	1ErfihVyFYM0huMvtLWlOFSKOuNRgZUYeJyJa6cE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192238d02-7799b839-b5ab-417a-bbeb-9ac6ec7fdf99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0449beaec0c2d6cdbbc0d90016975cbeae31ec2b394b648bf3e7656e7aa8c83
Date: Thu, 23 Jun 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656014212
