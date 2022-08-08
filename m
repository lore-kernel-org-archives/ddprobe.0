Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C6B33E8
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659998452;
	h=To:Subject:From:Message-Id:Date;
	bh=ts6g+mTwT/SrgkTQgvFfOAgIHkj61V5KC/vm0yPCf/8=;
	b=HiV4YFV356U2xz0CGU9xslWzwP0F3NxJXxD90ZFefFMSE0CE5Vz+jg9s5WwDzlZm
	gqQ/SKtMdoG91KKlTRMUtG+5IB8E17p/bln5sH9xRTqbBXcHLm1JuUp7hYfLwoKQGy1
	53LgQTwGYx4vQKe1XRR7siUPI2NdfH1l8YnRIEwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659998452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ts6g+mTwT/SrgkTQgvFfOAgIHkj61V5KC/vm0yPCf/8=;
	b=LkuX9uQZqgpe4AsjJnAjdhlBhY5OVFOZuRJIeuzc7pWA01BaRqxdjQgktOtd22lv
	qthY/B517t+WHxkICsF+6ktFxiiLSA8Mgh9WMrxArbiEfK25boUpHBCkfXsg/GtCSb9
	m66JvHtUrHWNeDtqSw4+fhQ4CkmwceqzhWY7NeV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f9e3b2c-49027b70-980d-4f37-a6da-e535a42fa61f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61aada535facf969694261df0447fbac05c136f21595a6f5936c2fc877c26d3b
Date: Mon, 8 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659998452
