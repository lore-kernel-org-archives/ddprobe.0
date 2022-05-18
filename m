Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313A21FCE
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 19:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652901539;
	h=To:Subject:From:Message-Id:Date;
	bh=HBJqUhw/0NdNp5xRAnfV3fQ/h6ky1dIxMB/KhjMk7wI=;
	b=ThIA5QqBajSK/fvNqn7+lyYQosWpWF1NuZ13qvm3ehueaAJyUsav/LYFkuKqDF0w
	qUaJVJdoe2L8swQY91OpQckd/dt6HImGo1zASa9G47GQo3GLxeWU5zn4jabB88EYAsj
	NZZpCRmRK1/+XbluzXHAQX20Bt0q0mv0Yo+mDu14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652901539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HBJqUhw/0NdNp5xRAnfV3fQ/h6ky1dIxMB/KhjMk7wI=;
	b=jFdAyd0HQcuL/f+FdjWMIO3ql97SMVDIbTXyrWTeBviS7M0kZy+eDxM8Ia/iUbNh
	aG90ImZB+5Do6eCHq9StDST3SjFdxGp4Dm3JDA588ZRTGMPPw6rcT4utoMlCJMPO83x
	irbn17EpvGtHtcLbrn3cKkk03rcCRKDkDLEgrGos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d89bedbe-4ed9adaf-bb15-45aa-bf95-bcdca48c2304-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a24029963bdd059225837d7bba2e158a944a65f75c03f8dda7ead4ba20ab553
Date: Wed, 18 May 2022 19:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652901539
