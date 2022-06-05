Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1693D4688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 19:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654457639;
	h=To:Subject:From:Message-Id:Date;
	bh=/mneODVDoopj55HLqbZOnGZIt7omVYOWyebWOm98KL4=;
	b=Q8RL5xNt+6mENByC8f/jV+B1/1OQgyjUejvuhbhazZoL/qo+vsaLuCVdvNUDW2pZ
	SbYkq5WxG7QsVeRD9FYtiKGCYi+QrfR1URnswZ69xyk03XcLEDE+GusYuWlM4ZR08/7
	jHbA2aBrImeWm5dabx3fbd9y7UcYzcO9xyY02M+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654457639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/mneODVDoopj55HLqbZOnGZIt7omVYOWyebWOm98KL4=;
	b=B3hHYWYXL96WcuP3dtl/kopvMd6MauxAUo8JJ/iH7QpVufxb8TovXFKJ+jx6xxiO
	ZS9rm9AVks83TO0j7k/cxu4zDdroroeDQxE1z8Y4MtOOxdWJL+3nzI/WlOxwkQST5f7
	+BitP4ZigmDpeCToVm+hvcJdxaLPKwow5HyiNiaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181355c21be-bfc3b5c5-f3e2-4eb9-880b-f63f41195832-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e130548b07090e1cde40c50cceb88d0d749be96cc0673ee94b599196a4e63eb7
Date: Sun, 5 Jun 2022 19:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654457639
