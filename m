Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E9438E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646646984;
	h=To:Subject:From:Message-Id:Date;
	bh=Rds4gcJk0mkCXogm9A6Tz4gyOBdFc8HWKlyWOM/97uk=;
	b=ZOIPFLZnhs7qRC/sDF+I8j78WmsRi8+baHge2qO5bt68Pv4U05cPFsZa1B869Lab
	rBZ/78KSdu1PqmgZPDpPzCcawx9tgFU6CpBNzxkRbDNWdxDn9OGyxbteLatJxCXqBqR
	G3cuSa54bdWqFc3ZMH2FUyqvSf/pIyCdqBqlavDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646646984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rds4gcJk0mkCXogm9A6Tz4gyOBdFc8HWKlyWOM/97uk=;
	b=bEglTS1ZfVV6u2i3husc4xkZ2sxaQQdNWONRufZjBvg5Y0hRLLyRryCiouGKcyUb
	xQfXGy+clm37MZ9jRRNFs46KD+xDkM6idVpI+GseNdAhQNgU0icB6oi2OIN7oRgBgU0
	k5LEGX2w9Brhk1mzJPlqRBXlR59ENAlEoQlbs9nc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63cf0048-b1b0f403-493c-4e8c-8d48-af00714c5dbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 053871bb9bacef20afcdd0a14b9d419f406317ac034b5c58802b2b9b87e3f692
Date: Mon, 7 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646646984
