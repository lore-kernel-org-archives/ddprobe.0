Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDDF7E9
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660444252;
	h=To:Subject:From:Message-Id:Date;
	bh=y7l02DvZGM6lqRCfPVM0Qew2jiEwRgviQegNgv3UWJE=;
	b=EB9H/QanEfNIOFZ6TI4TSFb6F6FxvNdwV0qALB8RmhVf00u9JgKSPY+r2FMZROxT
	QjVE1J1cg8kuC/ycAyBLSTR70MO4FCO0B+KVaMofwO3TauT5IphlqT2ER1zusLxSQor
	htfvWzvEblfJ2x5mnUTzVJV5QduXuXTbNQKG8nWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660444252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7l02DvZGM6lqRCfPVM0Qew2jiEwRgviQegNgv3UWJE=;
	b=BRc9ZEzCAy1+DOOYPHlaEfikV4J6tLXy9JZ5FaSlKz+KxbMZOm1WKL2Sg+BEH3Nc
	oPLJB7lIylnLYqZP4zG99rfKQqe4ZUWK8mltcLnnvh2+C+P9gXEIAR6VCybbe4UEUvV
	jMZt1GZ1Nb3dcOE4nRwr4Ob64XTxtctsAWr2tBIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a3099a2-39cd340a-ca63-4b90-b563-b02368e85645-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ded3009c10aab25c058075d840ab9049853d9c2e60ed612ac389c1188b8ec599
Date: Sun, 14 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660444252
