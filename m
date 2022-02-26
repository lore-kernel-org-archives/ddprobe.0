Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FE838EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645870285;
	h=To:Subject:From:Message-Id:Date;
	bh=AGt99wVb1MZi8uOkChcPcV2YLFt4evkq5mdDYwdhzA8=;
	b=D7RjKVDao1Aopc5r8jvEe25o3CkL5WB6OegcE/cxZSzO3bxMhZCxMxB6mtiOngLj
	FEhSRnA1vynUuv3IsNxbQDSgUhL5qv0US2wl73wrXA+lkcacW6fy/mcXkUGCirEGGFi
	iC3prCM3iRo8SyABquZhomwjygsJzGFsKlpbSxAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645870285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AGt99wVb1MZi8uOkChcPcV2YLFt4evkq5mdDYwdhzA8=;
	b=lt5wfz0rasF2CmCc6n3eXkGQ0AlUdZ68+U7pgJ5jI6B9J88dnlV+a8bIDNXGU7s7
	8PU2JJ19288lBB0vn5Q0+Er/l2gV3WgNtH/8gzxyZWSXvYc0q9rHfScEu0LsfujUYzV
	XCSc7K4kQ69Uxi2mJMGb9lj7s/6X35vTnv3vY6iA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35838008-5e881534-ec8b-4b29-876a-8775656c3394-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aba4d94fef18dbd710712612b573f42607c72b555ab260874ddd8c2cbac7d48
Date: Sat, 26 Feb 2022 10:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645870284
