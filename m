Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7782B6641
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658872252;
	h=To:Subject:From:Message-Id:Date;
	bh=2Oed3bTIQPpDl+dl80baHrCOv86KM/6Y9eRuCx9ZddM=;
	b=foU1TU8OeAtic/8E/QVjetA0Bb3AFxDvTTOWVAZsk5lgLdDU6S+T2PxMFogqinrk
	5hJgCVTv/nn9+nKzCOJvApWGbrN1mMJt/9+702nAGfQJ4hUHhKpRKVJXVaIA6ffuQ7v
	174Iuzcb5bEFjRWY+rji+9IqKyhQuW1OSMpR91bM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658872252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Oed3bTIQPpDl+dl80baHrCOv86KM/6Y9eRuCx9ZddM=;
	b=BC7GqPv9hvxxlxwJDlD5h5sawDIhO44pJsPqLO64+AKIQhG9kvzwRKIomkaKyhm+
	gxAHR5yjWxYdOPQBA3FlQ0FPeWjWRqt7FLq+FOxv/HsamSZl8r055zYanSM4/jbpm5B
	5wVI0ofGZr31As1zaNNaBt2jb+Vwk0I4EilE4cHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823c7dc8a8-471adde9-d029-4f81-8474-e74f53d221ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3e47d13c03f83a43db4b944a1c1ace370c5e31304b821bc4425aa037fe6c769
Date: Tue, 26 Jul 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658872252
