Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE567323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645969885;
	h=To:Subject:From:Message-Id:Date;
	bh=kDUTVaG+9udXj/rpSuXcSExQqCWdsw2yJg/8PpALoK8=;
	b=BYJogC2TrX/KB9RSk2CZbuCG87r2/CZfCADmK4hNkj1PJVrZVQww6JsFV4j/UMtS
	5mrm3R52KKOe2lD2z7FuF3wLEFs11HyvbcF8m2aDhlkgrbxdQs7NbnTTEAQNUqz3mK3
	tEI6J6iXJAw6zA9SkwSBsh3pktJ2/8YKokKJI0fI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645969885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDUTVaG+9udXj/rpSuXcSExQqCWdsw2yJg/8PpALoK8=;
	b=LfA6aP1EcQtzcnuSxUcl5wznMLTwOvYdFrknk0cyu2/ttLhpVzd/tOWfl4uQPily
	yusiuOQVI3Do8GaS3MSkXyZh/8J55Ivj8pwlznJJafv8s2vQmQzbwCe5pKhIyYI8jw1
	RcacnLBkmeAq2q4+fyzCDvJRdPDq5/6rtAUsYsZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b734676-26db2944-aa0e-4bab-9d52-c938db163c37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3ab18ab95cb80ed1524424fd3d4595380bebe8ebd0558fd5cf4af930413264b
Date: Sun, 27 Feb 2022 13:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645969884
