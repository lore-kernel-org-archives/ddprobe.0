Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB75423A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656846412;
	h=To:Subject:From:Message-Id:Date;
	bh=C0FLvTEOaDSm+lc7V/ruxKQps+t9kGDCg38i2N2GDlY=;
	b=dF+KJvpCqRN766S4zfSM/8a3yfFc7QApf/KRjERO0nLYWcc2qeJoaL4gaGECx+pp
	B7F0JnKd1lTvyess5hjSjVrE1FkeeOhIc+6SAxp7TsKmTAqTjWqpBt1kjMmi4ILvoyl
	0PI0BzAX3spzcVs2JwKDOc2GpFfwahonMu4wTQR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656846412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C0FLvTEOaDSm+lc7V/ruxKQps+t9kGDCg38i2N2GDlY=;
	b=Ym37XEmUfUx38DYqy4B+yJJ9RQsQGAWvhm4jkkT/qixl3ZZAE+KCKOXHpABdBqvS
	Ayg5pou46dWonVFaOebf78OlSGXKvKdm03NTEZsBWFDBhtVNaHl+JO9uWWpSawQlmVe
	h0fUFAQn6JCNY+EfxlNSeSlzNINV8ahPbVfsOW7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3bde9de-eb8f5756-b40f-4e9a-94a6-75a632bcbe07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bc0c67139c8d217b4b1d0c9fb449d1d8fa1f4e71ea7d7897a56b7bd3bd271eb
Date: Sun, 3 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656846412
