Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBA1EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 09:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655804699;
	h=To:Subject:From:Message-Id:Date;
	bh=15T7usRNEPkc332Q4WtN6XDAxWpzn1rjSMg1swrK1Ag=;
	b=MOq5NiDG1eP+BfFUx30viM6JiZveVOfelvopnNR2cLieit5Q4XdVv1rpBkPdP0FA
	06bUUix5yOQU5XGUF6Fp86f9EbnwctxlOKJYZZ4nRDOAlsaN9zlgX+TYsv56amYe9FX
	NMzgDvLXdw+oX0uQy34OC0yc3tOZ6Nt0LLBAmzxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655804699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15T7usRNEPkc332Q4WtN6XDAxWpzn1rjSMg1swrK1Ag=;
	b=kvr01y+MVM3RAKnT8cdYbmhi+zAiCqhyvuXM6vEB5dZkE+sc5sTvQOcN3t18HJWf
	3M3JY+RZ05NJQiu0EdSD+WQyueiTrkwmVMA9qbx56FFYNG3WhmLU6Nak1J9l0aFyrAN
	o+tn6zBWkRubuVAVqdOt0nRK7VluVXx7J34z5fTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185a6a297-6ec44481-9dea-40fd-8f42-70e317116c5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a033c01a7cb7edd95fa51991bbb00cb72d4dadebd42b344e1ca88cfb7798d65b
Date: Tue, 21 Jun 2022 09:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655804699
