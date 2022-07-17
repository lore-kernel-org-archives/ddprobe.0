Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A18B80F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658060812;
	h=To:Subject:From:Message-Id:Date;
	bh=nw7gWI+QYmvPzn3YUOEJDkAvrPr1rYP5RXTfsC5TfP8=;
	b=ih9ltyEM82xYn22oZBIsrHd1fYp/jfvSv6vB34ctfBaAeavcpNuw1NjWJLRITe1r
	of328qG4+Gved2g9V7ARUe6IBddE7QT2rivog7dCQvsdzUcsDE8AA8D+3FFmVF/UNOO
	jgqJkTTnpcVTzjOC7xyRAnoP6efBfVj7KjmSP3P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658060812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nw7gWI+QYmvPzn3YUOEJDkAvrPr1rYP5RXTfsC5TfP8=;
	b=THYhdiWLAZjvxn6jCuErO4YgojTCZixYzyEOJlMvnsj2gbp/hMw1CaeAocpD2KJw
	Z8DhoBWOUtWldTZT9kJ3aLeCVzMwMFNcuK5KClDH7Sn9OYQHsWa95jSE7T/pCQHuqYA
	vyhgBq891g/0Qizwp+G3wE1u4TZRDWztVlz0V5Co=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c20301e-45195b86-cd23-4073-99f1-cbbc2158b80b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1c259ebdb750de30925e0ec90a1e024ca9c25990675d12c4efbb285bef02627
Date: Sun, 17 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658060812
