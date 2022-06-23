Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D911FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656010612;
	h=To:Subject:From:Message-Id:Date;
	bh=pgn8jnffb8GbHSydvbO22JWQk/LGvD6DyLSVqGtK0PI=;
	b=ZS6nMX5uTDexeYmkWqtZA45zGutrldhmVZ++OzeAA0J70oEECkV+uwqcl272otpT
	FgqMwriTpSMVswPAupxfpgIW8OFPhLeMEXaJpfp/C3KPoBJiKTE/qoCr8ObGr12kPpR
	Xc+shfWgMtkqP4wOTcOIyB6Efbrn0Rk+sKAxPmwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656010612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pgn8jnffb8GbHSydvbO22JWQk/LGvD6DyLSVqGtK0PI=;
	b=ADwppuVlOmX5KbjKd66IQwEymT0n2FEpUYUkOdR3C7QkARthnkC+qYGs7Q3cTl+3
	GsDurDLXYNI8MhZEdrA0udZsjy3HrET532S6k2KG6W2NrYsR1NOiIvYia7OvI58hgC6
	V5gDs2c2L2y9dqRXuHwOMdz46W24gdbdb/A8Qp2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191ec9e3f-2248fa56-43ed-49cd-8ed7-496f6487d3ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 599b680436804577ceb0d4d2aaae02d48b4fd6602dd6462125b8fc239fd88b1b
Date: Thu, 23 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656010612
