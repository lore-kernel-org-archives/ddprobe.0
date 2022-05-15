Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE13F623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 04:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652587319;
	h=To:Subject:From:Message-Id:Date;
	bh=DzvMpEVBV0MeSITLewenuIC7ph6vzY4mtVi/LSz+M10=;
	b=Qham63Qy/oiY2ej6k5kaohuNK5/+VsfKqf7MtC5IISg2padP9I46exsf+AfkBiVQ
	TyELy5Av3TLo/kAHt2OfK26HMALFajwFGQgBG4LsYrOoUvOLJx45BhLJiQxpWs60I/k
	Zpar3VrfW9OK+3ug0skGNKJv1pyfTwOeGyXXU/dU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652587319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DzvMpEVBV0MeSITLewenuIC7ph6vzY4mtVi/LSz+M10=;
	b=euhpbIIiHVXt04kcBApfsCjfrrcKDke+flKH9bSTdQiVwaYd4+fO8HRwqLS5Y30E
	MPGCyuA0yPiSAWRqhP2w9/pTIWmmEoR8JbNAtdRki1dFb2yGxNHwSmlL8FzBIjeZgcO
	5DEYR6T4tE00SFzXNQ80rntWV8cEyllmguNAEWuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c5e15021-e53ac772-1d7b-4354-8d8b-9965c8216eee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b60ed1c020c37fbad78acb4dd08cc0e65958ef50db4e535a8940ca0caf1acba
Date: Sun, 15 May 2022 04:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652587319
