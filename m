Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E242CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656883012;
	h=To:Subject:From:Message-Id:Date;
	bh=3/I59sRTGtKuAkfdFNubc3g9cRfEXcAZCnKSIme2khY=;
	b=gUEFcqx5kGSt73p/nGitJ11MWlSxh0P7o4w8SDMWcl+HrsOv/h9ZRv0BgrZV1sUc
	bYfrgTC51yCN/NyohOSF+nAT5MmUalvINZ1jN9UQTzIW7OQ0XPzGpJEmyCRUcspA47J
	M0x+ja0LBpQKP/8o+aQ8fgOR7b4DTQfqZlj4lWvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656883012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3/I59sRTGtKuAkfdFNubc3g9cRfEXcAZCnKSIme2khY=;
	b=FMPxdixkhT13MCnCZOX2eRub8euNuP3cjK8yjyn+OO2Wbrjk1gIK0sPUCSF7XZgr
	OCnAB3LS1m11629vM0PGJjWIbEQog8t5vIzY4w6bYXKmnYOwFrt/HT0/D+TgyK1evOt
	p4mvhOyY4z3JyufR29E24Uo6tEVHXe+foQyXjai0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5ec62dd-8ebb5425-a31d-4163-a8b6-dc0b92227dc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 960ab7e1192d3808cbe46028739b0367693c548d620b55cb197c3c25624b5307
Date: Sun, 3 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656883012
