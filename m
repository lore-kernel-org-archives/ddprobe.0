Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72687F6
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658050012;
	h=To:Subject:From:Message-Id:Date;
	bh=X67inWZS+2g5nlmlL8ndRB7pYhtdFQ18LhOWi19ULRo=;
	b=j1qOCbI3fjXCmaw53lWXT9e+ISSc2PCrIVrOaYvZl+gTStETA63FmpGQfjZI79Um
	dpGsQtKly7YjWBr5/NYY1uODu75BnSYGR14WYysB0UMaX1nxZlHAtZl4l0j7ZWgw5Ac
	3OHb5KhzDjq0tJLDD1pbYQbQgth8Bg8x1GCBDyS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658050012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X67inWZS+2g5nlmlL8ndRB7pYhtdFQ18LhOWi19ULRo=;
	b=jn6TYkuLb7CGoC3yTl38Xzk/hasLHS0/r8fKOAUGCPhqgz5pU1mNo8RFn6i8MKKA
	7iLU38FZlX4Gk/XERVEdJKew6jTJkVQFBHN5951oLL/ok++mgPodVVFWGcfjZuHvXQ+
	E+rPo65s45z87BEg02KSrk8ObsQlpUha0rspzo14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b7b64c8-b7bdb0b2-5ffd-4e79-a2d6-d76dd0df406a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78c302346bcac844d6d50b1e01b94b29d0f939e8899bb6eaea3bf61ceee2d956
Date: Sun, 17 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658050012
