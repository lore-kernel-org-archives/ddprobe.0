Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116E67C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 20:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654633739;
	h=To:Subject:From:Message-Id:Date;
	bh=16E8Ol7yMU9FZ80KkrPnSxBEHGK5cCrpUOoYDzb61PY=;
	b=A1oUjHp9gQUG+M91PiCotaCINOCHk9P2FgtTIgQvq3LdQ+Ppbb+txZYvMCvL3oAT
	kOahMrKX91oBtVY5mmbsMrUF2I/JuVpvqmGrpB/X1T0rvaHOaZVhM+QOEqOdyX+dVQ7
	FHZOM0Corzin2c9eWK9y6hoG3pcoKe2IdppNPLCE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654633739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=16E8Ol7yMU9FZ80KkrPnSxBEHGK5cCrpUOoYDzb61PY=;
	b=DVYl23Kzg5bEIIiYkEG9EMZpHOvTFSV7+ogJXuGpaE5ix6KScvBqfzq0YqMoOIck
	+Y9o5yRO9zTlEdhrWd+wBlEl0ulj05CCDPQkbiLlaP1WCrj8BC2dZ0VsXm+uPWwx+oI
	zu5zYwniZc2EXyMqyUmqH/GT7rtqGjEgTO7wjK0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fdb33ed-3ea33379-7a70-4183-a008-233c3983100b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b1969771d0cd902249ece27a170c37b10707c712d58f0ea59059d6ba358d0d0
Date: Tue, 7 Jun 2022 20:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654633739
