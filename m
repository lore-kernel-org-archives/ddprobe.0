Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D97FA3B
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659709852;
	h=To:Subject:From:Message-Id:Date;
	bh=N3Tii5VkW92xGeEbzdMAZekI1khf9q/RIaF04EE0U18=;
	b=cOU5TiwMWB49dKcyfAg+bCdXQt+y47jk3+nP8c0IhhJTxjOJOPIJoXXQcFWsZ8IG
	/vMeVFZbSknvKagfkwam8dEzfcnCqI4m22hU5wL7FTdVz2LVqE7yiu9kEAZ9LpvsQOn
	2duxVGVCv+MXw7IWf0yUOkoNJEtmUw3UE6tVkmM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659709852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N3Tii5VkW92xGeEbzdMAZekI1khf9q/RIaF04EE0U18=;
	b=hM9iczxYR2/WbsObdoMR5IEk2wZvEHZSam1CJ80rXH4jnUxO8Zow4dcpC3wkp98a
	ZiOpM3YxNVUrCt0RNbXnurr91gzvj5wm/LYgUTigpHE/2LLEuUiEeIs+ERxhwHkQSba
	XeDKh5VsD/jZyciO0mfUemC36CH/o6pCXaK71bzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e6a8bae-0566e667-b13f-4c5f-8ded-7fe9a58c23d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e94efa36ac0ae81533e9b8a7735b19ff856727a053ecfbb9c1f5847985f50133
Date: Fri, 5 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659709852
