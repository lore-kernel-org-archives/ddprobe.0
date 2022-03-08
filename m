Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25A42F30
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646757385;
	h=To:Subject:From:Message-Id:Date;
	bh=uIQ+EqnivV7QUQft5EbaVe2ndWWUsUD5FzV/Lz24coA=;
	b=HM1O0zrPHAfG/ZQ2MuhTCUEdtz4aOIx6r2RkTJbyINsIB7yMKUYIDDEP4TO2ABsG
	GLssfbu+4zsofg111e+QHiBv8ovCYMP3Lh9ImmSTrgTMcwgkAAyn9PE47gezDB3+bHj
	rw/5KK+Yn6J7scnbMoFuVEj1NBc6qDhTn8tjMyZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646757385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uIQ+EqnivV7QUQft5EbaVe2ndWWUsUD5FzV/Lz24coA=;
	b=WdZvRcFeYlaxPDDym2aP8x0AI8wjyuGRj5ZVS40DR1mg0WZ2KEjP34XNFS+XYm6h
	bZCN+V/2wIz+p+/Bd73SjgDwjz/R7OCshUe/g/AAWNkhJXuLndTEc0w1iBBagUudwyD
	AEBWI9F2siq4rQ6pk3RuU8ZmdYcxwY5wJRxF2RXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a639217-076f2496-3489-4468-b542-8803afd1a56d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bb8e15b7db0d603e55280bb77c01172de06aac6bfa5ec5c1b059ae3a81a1aae
Date: Tue, 8 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646757384
