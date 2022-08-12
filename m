Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262721371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660308652;
	h=To:Subject:From:Message-Id:Date;
	bh=6KTDqdcesY4ZMD2jO0CnG+mAVz6xhHEKZwEq1Bvdbg0=;
	b=Vlw6B07o8SlNavxe1Q7yRnOzm8GgQqbm4Bh0GblhpNYj5WoBdBdO1l3FO2bzM2Fd
	s5SSCIH5VbKXozup5ZIWE3yfFel7G/3P1UG5tLUw5bxA7WsaFkIjo8eLm16iJmmGRAB
	4gT8GtkO7Oz1abjYR2tZ54OpfH5Be4mygYAYHEdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660308652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6KTDqdcesY4ZMD2jO0CnG+mAVz6xhHEKZwEq1Bvdbg0=;
	b=GDLFUBVXfqasEo7sDwR02/b3AUsKylYrtsT7Q/U1JcAGVCuMT2KVHMdAspYjq5g7
	wfT9waPBh7oY4xy6bHTS6UjMUAqGxWLXpyKygK2od7RlOxfNlzudlkSYGgLrDPXig/q
	EmG07OYiDVi0a4LwkwLrxwMuY91LQm+x3MZtERt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182921b820a-01e37398-7213-427d-a44d-923aac94e360-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07b7406f6bb8ef9c50d7b9804263cc68262f34e669dc92a4133e988e21b87412
Date: Fri, 12 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660308652
