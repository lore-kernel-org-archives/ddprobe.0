Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974527B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660849853;
	h=To:Subject:From:Message-Id:Date;
	bh=5u7zgWFYMPr/VGV5453aujdlj/RgSa+38NDs74taHG0=;
	b=elEr5pT+0muD1ENbAX381ygaroLWzPsMddORL9AOm4sCGocLNmrd6xauFMgTr/9c
	PBg/4fHPOnQiBoU9ustvXDbQ2SkSyVl5K6yIvZcTEjB2FPJWJfSj7ZHPY1MmpIo9KRA
	zdVwHkQVTpLZd60xe0W7fgKudjyqepoZ4s7TbvGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660849853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5u7zgWFYMPr/VGV5453aujdlj/RgSa+38NDs74taHG0=;
	b=X1rdcs2q2Cp7tHak35y1fTgmUt19MMfUatx/bE44QTJtH5TDxod4PQ0DU8V9LRbX
	sTtshZgK5pts5AW0Yq5Jwij/B0xSp51SYn0busFPfFf74Y71cnbhIZSs47kpOtIB3ax
	zngNrPqucKyuGTnWLEiJK55tlQ3ofgZHXEYiG1QI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b25d90c0-03c986b7-4c6d-45f7-99fb-8b7c59ec2b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47db3d6d6fdb1e204abb4ffbd04d0dd9cec1edf3fae2dc730d6f57879bf1c9fd
Date: Thu, 18 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660849852
