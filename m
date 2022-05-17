Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BD31854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 18:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652811599;
	h=To:Subject:From:Message-Id:Date;
	bh=3JGn4253Rz677OVyobDO/CzzFuoiVT0sMXOZ9VEL1TE=;
	b=SnDfyRUnkFPFRzCTsyVANiRNBHrNJuMTq1wj1zksWDawP57nMlyqS2trQmrOu4Dt
	ErELmrf193ohfDyMDvK776d+4GzZiNDjT+VNrp2EbTQoC5K6WxeSdhKsWZFifsvFJmf
	l9fPejTOaZ9o7NBvp0ZoQpwSIL2PPEqiS2b5l/sM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652811599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3JGn4253Rz677OVyobDO/CzzFuoiVT0sMXOZ9VEL1TE=;
	b=UFBrlyVgvSiHnfSq98OSUsUCWYHewUvMuhLz6mbxXjnNF84sabpnW0GqzIJlHqxd
	WuCmh30WmrN+5in6S/Y9kuKdE799fL9iijbBAgTxCR1U7I5PGnJ63iQ5NEIH79jEnZQ
	ejWMt/XI1UIIWDfE/j/1rE0tPayu+JVu/kfycUsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d33f8dc7-890098e1-140b-4528-bbac-402b5c8dbc94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b0fa80108602ef9ae23a57bec720aa8fdf6e979fe2c3dada4abb1769489b5e3
Date: Tue, 17 May 2022 18:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652811599
