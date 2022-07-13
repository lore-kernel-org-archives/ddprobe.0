Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E08333C4
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657723012;
	h=To:Subject:From:Message-Id:Date;
	bh=du39nb8fQl+z0ou2M5Z9oh5ZC7mnEMh1jNwhJKD7cRA=;
	b=R2u+luxdchRZnsyQn08axzU2wcej7q55uYx+Y4+Lqa7iP41xdJ6H/l8SSkd3ZoyR
	Or1/OwTbWoaWF0tJw46IhMbs3CvKbXNfPaD+bSfAV07bd8gHkKyZ7OIkGhSqBEgcD6U
	aJrhbPpRQUyf8J9h1sWJx8NRPfi+NRcpWSg3sI0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657723012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=du39nb8fQl+z0ou2M5Z9oh5ZC7mnEMh1jNwhJKD7cRA=;
	b=e4WAnUBPe8RCkF5L6H58Pjqtja0nAHl9D0e9WhZ/XFAGFVHEKGfZaS0WrhtJcAVd
	ehbXKlrz2y+V7h5zALb0ZBlfp7tfEIokM3IiTHxBYZqK/iYjxzbK5s6usBZeVWbEatN
	g1MF3+k5FMLuG+mgFuLZ8P9mc0i7RLkOJRyzCRFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7fdc4a2-5b0255a6-4b58-4fdc-ba6e-2a400c9614c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a27a5850153ff0e9bee2f4a273eb01d0b5661214f32a37fbe806a208aaa85483
Date: Wed, 13 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657723012
