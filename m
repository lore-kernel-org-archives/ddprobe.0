Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F3C614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647122784;
	h=To:Subject:From:Message-Id:Date;
	bh=9phtFLSfPyi56d8yPsaYQ5KXzzGkz1GCLIx1uiZKlb0=;
	b=kBj/WFmnaFkkQCBEIqgLzEM2ZfZEy7arJacMVqtvo7KJBwPJNDtOS5DE0Lrr6h6S
	DUWfo6uOWmpFflpzRMBS5sE2AEIo85KzpaY3hPrXar3oRNttHvD5RFkl+37/qaSXp2T
	OG5y/tQPpZ1xtgSjE+4VXi3R3fyF3evJtq/2nWaA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647122784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9phtFLSfPyi56d8yPsaYQ5KXzzGkz1GCLIx1uiZKlb0=;
	b=QR87pdC8NkIImpes4/QtrSlZFhemwdzhPTsDaFZ2DYsgzXDlxrRaPaFztc6DgEPn
	7jPjxenOBT7mV82V29ld3/HF0OLjd845tuzY7ZEdxS4Ol6fBhZUEtIh85zaMHXJWwnf
	rf3AyIqocrgn9HOZezJGh9zY+RZ75RpOcWjljn6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f802b2205-40d3cd03-80fd-4f34-8390-0f85ffba5059-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a91d2f5d28fd266616644ba60d5d6c9c5c3c95f8179ccaef9521266c8909dc0
Date: Sat, 12 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647122784
