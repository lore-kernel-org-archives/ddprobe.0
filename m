Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193EA7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657465012;
	h=To:Subject:From:Message-Id:Date;
	bh=5eG2RTM4COVzLTUMYrtJlLvAdf/sv2EUV/Hmng9PDsk=;
	b=Kzi733uThNGntDkWgbw0cum8rxd7lXwMaIPa+4U0ARajXBgqRA4F3o6QicI4Y1gd
	mhPFucMR31++oBiD0HpWr6Zgl9phiavvUJGDtP3PuyXlvH237/V92Vhr1NmJWDFrNkS
	dRp/L5IbP+AnqzEPkuQ/9yjGOlDyC38gcjL8NMpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657465012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5eG2RTM4COVzLTUMYrtJlLvAdf/sv2EUV/Hmng9PDsk=;
	b=LbHxBmdd0FVDLQfAj6uj7gqDJbCbd9iefS2dweAkb9rL7fge5dDmh+5eo5KIjUhi
	BZq/LSrvIUFXqKWrjca+XZKKAM6wOEreOA4n9nuUXA4ghwUjyOVA0NbV0/D6UjXuRLO
	9lPBMxYQUvVQ6xUfmwU7A0AWGUw+P6eDGm5Q9Wy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e89d0063-4fb539f5-8ea2-4b47-bd3d-a761ddf3f390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8a938e155f97bc661e7377f7e7dd9d1080d3ca4701a26815a142d106b6786cd
Date: Sun, 10 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657465012
