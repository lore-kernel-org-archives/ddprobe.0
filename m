Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012EF3D9A
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 23:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653609179;
	h=To:Subject:From:Message-Id:Date;
	bh=XhqKnZlGd21aq+l0kxVDY4A3GURGkAqNDOkL7EgBF3U=;
	b=SpZQLOKAMjjU/Pj1e2JE1Y/OMGSXh3T1BVYpSgso7JlUyJVTyRBvSGdocOAMKYev
	X07YnxVkpC/jICRc3qej71+MP+dq9ruC4+ps47EUKGAHqJQqB1CvNOMTJHn1kWsg1Cl
	WpGtqRZH0r4Z6j8m/1Q3Vg4wCcX5WAZ5XGq1FjWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653609179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XhqKnZlGd21aq+l0kxVDY4A3GURGkAqNDOkL7EgBF3U=;
	b=a/W8vYHtkkmi1meEacUQdgDyCsCJrjSuQrKNmcBKLpuRKvUgbG7GxM6yynulGYHD
	aG/sRjKfxsXnEJAvktJucAaQNFTXP9AF8gsnDsnHsidJY+2GrJJu8wsx5ww35qGgGl5
	01qQ7V0c+XGyYQkrlhn9j10dSfBCaZpr6UZaMxDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102c9a869-7ba86e20-eaf4-41ff-9bcc-c43b26d9940a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 285a5fe833d679204f067e09b1bdaca23c6498daf620ac9518da1f9038521e20
Date: Thu, 26 May 2022 23:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653609179
