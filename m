Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519592566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658940652;
	h=To:Subject:From:Message-Id:Date;
	bh=7S/4R9fDqxRzR9+TZCcgseMDMSWBBqVGh7PINFbM24s=;
	b=fs3TTZ+6SfzMqCQTihYZ0UwLac81DUgz9OMhZaaO+luTXoPatLcuUxHp1HLeSffL
	Ok8zRULpI8JT0q/sjhJ8RKi+ar43cQesee47u5sc8YaT4vxEGoW5M5TgE1+bWkTkev7
	E4kTy4voa3DDYNhDQFzQDsV72kB/JCQbIMuRuwbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658940652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7S/4R9fDqxRzR9+TZCcgseMDMSWBBqVGh7PINFbM24s=;
	b=dj22w1D0hX/WeSwWczVrPYzsnt5gM6iiEXdt7fm/ugoQ2dzUH9+GEpD722O/8Wa6
	GsGAnAIIAEpdeK0DznW2N0mGQcUHcd+Y1Dby6Qspg8ZmQd+yGctzmW0Jtx/64lleeiy
	ZWfW+1i4/OPri3hJXFM8o5iX9LTwvgYfohXUYhb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240917c00-3e7bbaf7-aa20-4e8b-aff9-89f860fb6bb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b92b79d39ae156f5e84b4924fcd9bdf33f6fae7a35f4909351422c734e25a7ae
Date: Wed, 27 Jul 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658940652
