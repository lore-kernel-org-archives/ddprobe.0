Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B597C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 14:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654871819;
	h=To:Subject:From:Message-Id:Date;
	bh=z73KO4SUjlbHwdH+KP5tvp5LkgswRPWU7Wr4oEAcT94=;
	b=htHmOV1O75t8r4+3DJWEHGVBpdrcC1OlUH3iDz3swm1PSwKguX5ZZ4yQM3LKgrD1
	cy69qyn7t/glzfP/oOn5fiuoVg1/lKgSuCyzYWWTQM4qhHbBJYv6D9LF0QYZPxYYykT
	2eUl00+MkGC49qaHpgNR9xgm2zjkq/TBhXNjpbyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654871819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z73KO4SUjlbHwdH+KP5tvp5LkgswRPWU7Wr4oEAcT94=;
	b=WqPYARftlwbATSl7jth/opAvZzazISt+c7TmiDH1mOEjS7FFIcZ7DisBgygJcUi+
	NQVs2M6goBX5X5URWNFJpS08mRmT8DqnKtUnwghPTE63kQAyu0nSUSu9Y/p848zHOHY
	6XQprWcJhpT8bE/HDE8GdDyFaZQdxvfDVhwhgPHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e0c03f0-6f9dcffe-6ea7-4d6c-863f-8ce3570c7921-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a28df64f5f5591301ad5a854a2fdc433c81fea84287a9f6ec56fbd65347eef68
Date: Fri, 10 Jun 2022 14:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654871819
