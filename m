Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E92F1FBA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656829012;
	h=To:Subject:From:Message-Id:Date;
	bh=LUxH8h3XcZtKlaKNTxidJbws8gUkNCgiXpkCLQ5hh28=;
	b=NbWhvH+S++YiLalBaQ+TIkuGztifMHDRlR4DXChFrUGefGUBmorlQzSSvQSW3+FU
	MKgpDOvxIIa1pE1LJ+BH4TlhmYisiUKZb/ccW3YIW6ATxLlGaPmEAzdyCjRb9VvlXUB
	RPem3pb456QVUwHBRs6TIEmToL36X5lVR6SslUfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656829012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LUxH8h3XcZtKlaKNTxidJbws8gUkNCgiXpkCLQ5hh28=;
	b=j9lGd9sIQLwtsWoJow0003Yn9/uWaA40kPqOdz3GZOUyKl7jKgY9VxG53xv9K4Sg
	UMMDWCChho+lPfJkSwcdl+nvk9/0F929u2j6SmHKWifmA2rVmvWyRaJOCMOGLBJ43cJ
	ELVJXTxqQerEHK3GQ8mgBJJbP2vL4IHxFAzoWKVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2b46967-682b5ef0-e07e-414b-bf74-7920538822a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76a862d0c08cbbca89d6da1956b3ad248d16df08bfbf6165e24ab368db94ecf7
Date: Sun, 3 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656829012
