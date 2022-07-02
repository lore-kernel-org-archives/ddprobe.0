Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC5E29B0
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656764812;
	h=To:Subject:From:Message-Id:Date;
	bh=il8l8Xl9Q45e4Hxgc5bfMsoMz9ZmKFQMaYjxoUoGbTc=;
	b=J4V5IXqRw/tkifpU2KCB8cnXBOxxCODvva0cJArOQ+K02gS00vfFSHMTqTVE/9lN
	LKnESbsaMdcD0sew8chkPEipN91TJ2WmfF/nlq+BHT2BNHcLTlfPnmE5l9sr50YEoqb
	hXHTkzUBFooSbOiwXneXuGUFkqwdqpjxWA75JzAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656764812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=il8l8Xl9Q45e4Hxgc5bfMsoMz9ZmKFQMaYjxoUoGbTc=;
	b=aTNMrVGbzsP/gpilKF/ex5CsVB4aaxtbNzk4wSBi5/GuPshr0LLA4WmE0qg59fe5
	Qo4HDCOjuPiz+5cPXARIDRVBBIzhbZgITmc73bXJiFInADDEBcfcFkK+SisKGlU3L+d
	4tfZB/gK9g+zrsBIED4OYIfHqPUvzohjDlrHIp2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bee0cc44-8bf3da3e-9b13-42ce-b8c0-38d261e5c51b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa2fbdaf2ddfd238b5365f153ef6267b82d905f2967d56efc75646f6030974e7
Date: Sat, 2 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656764812
