Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27359ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 03:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648004785;
	h=To:Subject:From:Message-Id:Date;
	bh=aEY/HBUBSzEK19TvFJIA9Q4J9D7YkC2JsHR4+30NyHs=;
	b=MPjADRP9ULy+qNvj+9pl6EanbeK6RRRjgmcVQGB10RBkGEaVFcQC/NWP5/B1k7Pe
	WhlZxS8jYJw9z467Wx7s3RWgDKoKtvhDPFq7EQHDdxL8uzg7O6rpOqZqlJnfbh00HDk
	FQLLzCeVcrD7VzQHk2lDWi7hPErltiufDj5gUOzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648004785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aEY/HBUBSzEK19TvFJIA9Q4J9D7YkC2JsHR4+30NyHs=;
	b=F9D8rpDIiTDux97qEMK18kMaJQdy1Bh7CEtYtkUD0dpJyGoa0ccEKGIRmEdRDPjL
	Nu9LwbHRkNn/qlf60e2qlCnENWjGCgLDGbUeWPcI5DxmiTQMGgsW4ndyCRv8MYozW9M
	d3tRXiR+ExbqeGtHfoSwq7R/SlKhKhLmGyo1IfeM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4bd6287-0a861054-48a3-4eaf-9bd5-dafb0aecf1af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 482ce683d09fcb1a7ab94e3608e6deaf9458d9721c086b5fc5099f5c7a34fc8f
Date: Wed, 23 Mar 2022 03:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648004784
