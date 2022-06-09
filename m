Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B01B7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 00:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654733819;
	h=To:Subject:From:Message-Id:Date;
	bh=WzlN/BqxUG+KZiYPQAchB1OSgKd9d6tmwrTKFjBFVjY=;
	b=O08zRwgsqqcgc1glCMx/786JWlx4LfSIPTJisEYj75aAuStKz9tJwXxcn6vXByOk
	u3KhB8ZFDOtyes0uP0eJezrJXnA0wIByW71TGjr8xfGWpRKVex1jSfxSHIVyAyGvhea
	PYuD/zEJSYLp2XbSkUd7/3bLM0uOJ3gSoCs2LMLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654733819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WzlN/BqxUG+KZiYPQAchB1OSgKd9d6tmwrTKFjBFVjY=;
	b=AjXPgjxnooLBUN8VLDcMEZBQnm1L8QCL+CQEzDTjkriNhfOinBE5ifiCkctgsczf
	f0HmfUDdgV+kDOzFqw4+95upZZS2ZM6i6M5LSD4K01ATtiVglUZV4WE+fv81bCAaiwS
	CebhCdkd9r3+Ee+W98U03h6y/mNHwVu3JVlpyIqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145d24d5d-83092705-8227-4b0c-8d2c-6202ec0a7246-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc2b6bec8bc5da3e0dcb47701a23b0412b2ff000a6dda6e740d8b23abf76be3d
Date: Thu, 9 Jun 2022 00:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654733819
