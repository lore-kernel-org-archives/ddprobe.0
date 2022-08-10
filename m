Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411AF17EC
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660138852;
	h=To:Subject:From:Message-Id:Date;
	bh=Rug+OWGmNesrfzUWrSWhuwIb+DCL0+YO9ImZiOA02EI=;
	b=RTxY8Ysyq/F2vdNhPJkCjGYsevPBSCb6XUZy4VvodoUF5AfhjZBm9ztiYz9Z0Gdw
	UkyLDGws3vQ5Ik3s4lSfIaOFT5p1J47hf9l0eQUNSihuNqnRvUoOSUJrfxGIDp/PDPs
	JWo73p7hOnWYRKAVziRnfm4XNcPYw+Rip8/xfbk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660138852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rug+OWGmNesrfzUWrSWhuwIb+DCL0+YO9ImZiOA02EI=;
	b=I+jjkjQSEEEkrEjUglSz8vSkxkH8jtCta/LvMK4oxCq+ykmVlDf4IHQplDpYxrNe
	SgM8pIFVbUy+RJ8Z83oq5HMftbEoLi5ZNCUvr28R2/TzHXUFH+DyqWC473kl4O0HKyp
	nuEOmWfn/4/BJOdy4aIdaVD8+fDu5YVXPBTKvVSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287fc90b4-6365a27d-fb6f-4d88-a9a6-a285d28265e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 754b467344f3e427720e8cfbfd5753a90e8d42778ab5c0dd3481d8b030b469f4
Date: Wed, 10 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660138852
