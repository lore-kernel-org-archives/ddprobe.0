Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2B146B5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 10:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653647040;
	h=To:Subject:From:Message-Id:Date;
	bh=AWAuwwU41l8uYTeeAjbEjQ93M2QDOIdKaSMpM1rdpyo=;
	b=jzYywMpqPN7S+ewPrw+ZAiQudenH6qxWqLdInyzhv/9Q41iKZxJQGiyBkkKV2X9T
	qamB+2TJjc0DAB0naBJA7J7oQvanHWqM7Qk+C3PcOZVrnJGN0pOxaB326TJe+jSmcLR
	S/04u/Ccqqhbf7OXa43dP4Fzb3vNegRIqM7lZBt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653647040;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AWAuwwU41l8uYTeeAjbEjQ93M2QDOIdKaSMpM1rdpyo=;
	b=Kj7iu2JkhDju9GHYPc/9emlQy6HL0nap1jm0Y60cXU+mhaXhrwbzo28ccIeJy9tj
	hwPNGAO0IQymBIrl4QSGmdEissHqPMHquDnUt6XLBEauLkl1g2FSGsNCN220nY/8G5S
	0FjOMDGpTFhodPZ12zBJboGNMEYzIwRtZHfk9gB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181050b5b34-edd4d059-77f6-4df3-acc4-275979f54b7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0731cfd00bd25c0e07647f36f1d9f6b1a61acfc78f4a7ff4135f1db180cab44
Date: Fri, 27 May 2022 10:24:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653647039
