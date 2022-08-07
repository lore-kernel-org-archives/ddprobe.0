Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9565A3D78
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659916253;
	h=To:Subject:From:Message-Id:Date;
	bh=aMMAVPrvyovAdAg63Sci+03doJFyj/dX9OZDciH9dcs=;
	b=TVzeHpCuW6Mb0ze7sWnaKxP4FaGwx6QfhJ7mPve6QQIKWG2lMOek83/qawKSibnL
	QvJsbubpxxm4NxG+KWe3kBjYeQVAwDyNkB9QOUlrPoXgjpVIIf3I9bMDpBw376dc+7j
	aZ+FnYqq/+GiX0BL3+/YDJWq5Dnoo5PU+a3r/mCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659916253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aMMAVPrvyovAdAg63Sci+03doJFyj/dX9OZDciH9dcs=;
	b=hSat1cfLTXLPu1FqEluQJGqdQ9S2WFo5KQwNIcIlkGvX7DCbQnaaiM358/CQAkXC
	A2Qg9OmubU7D6wqK0vWVXwDux8T+9gRGQJYoWlg5Xn4XOA/WiJYJTUTzsEomdxgcIFI
	x5Pb5JVSrJ9gbUpBPmIyZl49cgtE/dHOLzPbT7Bc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ab7f5a5-59c9972b-f27e-40e1-bfd7-be6d2cface7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c299f53882b96f7adc28c7561b8114b9c0ecfe1d962d02aa1f43eea7cd4e4172
Date: Sun, 7 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659916252
