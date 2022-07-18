Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4AC9EA6
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658134613;
	h=To:Subject:From:Message-Id:Date;
	bh=ThqOIRTX2lBgXgx6OsbGEJmsWxDG4yd2j0xxyvIGU3U=;
	b=QtbcUvcQENIx5s6j7jwh/X/sizqJvCybNfjmwv+EFylPdvmzIHPw9Ho+cuy37yfM
	JpiCBqy7T5FeNhZJJRDl0SeBMOKekgFaqhwIeAGH0CeIds9FMXvb7ku1pHCvOGtzYfa
	UNEqeEt9ZqO/SKu63IxZMnom2xQCQm0pnHaco0vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658134613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ThqOIRTX2lBgXgx6OsbGEJmsWxDG4yd2j0xxyvIGU3U=;
	b=QluBWbGm2J/K0w2WATWIwucEJE63z3xQVi5exq9JW52T+N8clUwNsmO2ly9r2Huv
	q1en0ZRfMsvUoXFCg3esYyCOfRERUm/oQraJUDr5UjRMTLysE93Q3tW0f6GWws6lQbN
	0ojEmQHOmXBlM5Aos8/fDTODu/HPpErORqtm6RPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210864921-68100b1f-61a0-4c00-99c8-f49f8ae107d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d9b7f47bf9bbc57a207f497ce8c15ae8982e983ad7b4c377e4a36af72354910
Date: Mon, 18 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658134612
