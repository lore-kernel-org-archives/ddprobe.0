Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488946AB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656533812;
	h=To:Subject:From:Message-Id:Date;
	bh=tEYYFDEHshy0JJu1ouL5nA7+BLoS7MCoqt8o4ZKfI68=;
	b=M//VtqMS9CGhA5lpntdc++1Yq/vinq6sIuH43gC0+M403UbfbJ55wef57eoMs6yS
	Vq+xsGijQW9T3itB6iEIpj7VwuUB2JkQn65OkVXj6wpv+chseTdsaU3QaXZ9TbR2tta
	mi7J7DlFtYuSPhACRIPA2+o4u62W025UGJZkhltQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656533812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tEYYFDEHshy0JJu1ouL5nA7+BLoS7MCoqt8o4ZKfI68=;
	b=PCd0Dld/zVMm1CoStr4jGVOF43brTbvdUDyTNN/Mu7Z9A9zdVXlLwgorAUkIagYf
	vVnYl19D/2n5nzVOaLjP/IJcq5wU0iTtVBcLk/c2QBpzXA1ushYcimsNv2UlGidnbfL
	W4c0D74mgl5ukzdL+DThqKdZVYPPddC93LXPan2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b11c0444-96c81ca5-688f-41f8-8f72-013734d7f902-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca2b0f1ee5173a41f5db072bbf187bf31529c46ff7d8a8163cd6649bd401b2a7
Date: Wed, 29 Jun 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656533812
