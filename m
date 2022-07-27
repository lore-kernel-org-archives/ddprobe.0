Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5289C7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658946652;
	h=To:Subject:From:Message-Id:Date;
	bh=3gYjP34UHz8QvRwLoSjXqJrjQru1tt3fD9JeEoXjaF4=;
	b=R6ZTL+lrSbxwjZ2A+bUNo4eCbvxIak9A4GvW/J5C7O5DDdYtbtYZAp+UlCMUlNva
	DpKMzG2lyOFJF2x/GRkt4a3+8sgB1Th20QrCvBES5yuYZZdeq0uZ+WMHymZBfMQzd1m
	bOFZZwj/vCL91+QF+8n4aNF62r6fe4bkx5jFbY5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658946652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3gYjP34UHz8QvRwLoSjXqJrjQru1tt3fD9JeEoXjaF4=;
	b=C8ICAveJlL8gdtuUJh4nSjl7zl357k2DUDWCg018BmxofQvgVwOwEzw02WZyqKM8
	7OQMlb26o4zoGyGW/OkOibbOG3pbdETxRd21xLAn9jTboB79MAOcDcivIiCSruup06p
	W8QN/3yd4eBviLRGk8qpaENZPGnGxxk1E5BaKKsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240ed099b-73be1a99-c92d-40b6-9f5d-51237e645c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 720662dafcdc0302c07cd73305ae5bae17302d13c9de39d37f0ef83554284d53
Date: Wed, 27 Jul 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658946652
