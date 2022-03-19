Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBFB7A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647662184;
	h=To:Subject:From:Message-Id:Date;
	bh=U8hTIlmMKO/K2lJmX5l30GcQ/8NK9vD23WNsfKK3dQw=;
	b=T6IgZOPoWx7yhAvYHSYCWyhxQjTtg5hNdRTATtRTxXi0ZEC1jlDVnmNgNbxdPYKQ
	6UOI2ZFQaJTyZJ7clRZkS452gWOaMGrfc9/0SYIEVPWuZRWRvKSTrso233UC2zEUZHe
	Squo0vphDI9N41DW8AvOgv2+h4u6g7OAjBFq7Ge4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647662184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U8hTIlmMKO/K2lJmX5l30GcQ/8NK9vD23WNsfKK3dQw=;
	b=BfnKIaXqaYRA/b/cO5wuhkyWjBu2Of5mzKHHl203DiSjN9AI9F08Dob0NgHp8Spy
	9nebX3GxFTAvFC6DzLpYEaqXSFs1FhuQ86iT7YTxQ8mkKEBBuNoj9G2Yi0IXwuhOczM
	K+Ke5biY1wXr+Hv/8KTcE6ymR6vqYbXs8wXt8UtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa051b93c-1a2c8bef-2953-4a13-b619-a72673befbbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3b35eedfd1b66c1b2f669ce6c2c21c37c2a4d5f7b2a8cf0ef194f434651c3cd
Date: Sat, 19 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647662184
