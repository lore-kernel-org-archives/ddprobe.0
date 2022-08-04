Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B1C7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659603652;
	h=To:Subject:From:Message-Id:Date;
	bh=+2FV+S9vU8N1aqO/l2yC629/4reNdc2JwzLbgzmzrlE=;
	b=iE21j+39zIwK1LwDuggtFOh2cKKG2QdBb+mKbgIlLDwdmO2mVvhZWXLoFFxCG5Fz
	5T5C1bJlS3An2tMI6Ub9CSFBhTGh/pRyWi0qnIZgIo+BKmpiu2b7m9pVMdRkxkEi97r
	ZKh8gl2Ji41T/0/tZNVqSzaV+TRDjCV9prlU6T5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659603652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2FV+S9vU8N1aqO/l2yC629/4reNdc2JwzLbgzmzrlE=;
	b=Pp6ws1apYbxBK/FrHreyUTKijwMoiBhitzMDpivi8eI+LANqSoFh5IB4vuNXAao4
	X5N+Hrm4PuFxgIAAE7gSc4QzyPr1QLiTdyY9XIvRaO015uhihZvij0Wsb1KrBFa64Em
	9K6wWeGgVPFoVAsXJtpbE5kAxiBLy+M+78sQTPBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268160fe0-22d4dd08-1397-4302-93c5-45a12262d0ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8eab5582a008dc69d101069c227dc4e0ffab96e041722accc5f09dda68f7687
Date: Thu, 4 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659603652
