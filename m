Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1949D4690
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658423212;
	h=To:Subject:From:Message-Id:Date;
	bh=UfF+/lUZTvIiGHCVxZV0Qwb4TysiDOq7qRZdvCBe9Rc=;
	b=cbrPu+x+jGPxbR4MWTct9xAllJfP/MEc3oSAbOrXvD47iOW43INHGirTFRhZ9Sj6
	xmHsQ61Oab1qxsxEK6Xd2vkjqn4V/LNZyqogp0q4aoa0xkrqW+meISHnBGsa76dr+Aq
	W3DGw33NafWbGP4Sr7j5qP1b/9tLTJ3qjijnaxMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658423212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UfF+/lUZTvIiGHCVxZV0Qwb4TysiDOq7qRZdvCBe9Rc=;
	b=RBkCV6qHVElHA6EWfTXk5nzO7IKExQD7ajHO8reo6UrZ8Htn8P047LrplL0WBn1f
	I0buAmcRCFy6D+T5s+GDQpKLxpAYEteoh+IyZhyeUT1riTcbC9P47CbMTqID+op3Vjc
	wwOGkKN48LW8mFh8oZ8wL2688dQDKNuPf1Rl1bRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221b9f934-c69474f9-77b0-4b08-a6e0-02ee4a518286-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d04387fe05d94c4216fa207c1c8a917fa7deef667732410df6ada4cbe7741a86
Date: Thu, 21 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658423212
