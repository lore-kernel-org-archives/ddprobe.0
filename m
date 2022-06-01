Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7362562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 00:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654041659;
	h=To:Subject:From:Message-Id:Date;
	bh=DpR8unc5pCHAq9gmpakvpziLYWzTF23WmoalcZArTsE=;
	b=J0BzGYJwVEBMJSl0X7DMeniu9G8gBNlQIlr67xbHeg1wicvk/jWuE5oF2Jg1F3RG
	WlfcRJaTKe7R+LtrLcCRfOJyG/SkwN+icat11ckgR/F9VXuhDxIfns+3NLSKIrXuRO6
	kx7d+HW/PuosmbwQFkTzM4G5eIpXK+GvYMQbPZ0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654041659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DpR8unc5pCHAq9gmpakvpziLYWzTF23WmoalcZArTsE=;
	b=SFmvRLdECAJPGL9U5NeI5JYYOWItVQbob1ihfirrGdlES2lBzyuTjO2G2m4pp5wr
	rZv2bktnd6ZwjtChqs1QAihv00wEpYAUsicpwn4sndwEt9sWFTiy4p/EL7o1rLjtdY3
	sSCi0bgPRzyaEvWQ1WOzu/xCOc/4mbExbuwjXIT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811c90c785-f3423fce-4bc0-4041-9c04-d2623d9abdaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dbec655771aab459423c6ee239d5b5133d35096cf25a5d0f10a01b11a0177d7
Date: Wed, 1 Jun 2022 00:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654041659
