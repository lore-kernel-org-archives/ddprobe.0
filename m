Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5A210EA
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649637238;
	h=To:Subject:From:Message-Id:Date;
	bh=QmRDGQuThyj5rWr9HicNAnRufAyfJBg5+wqHqdtS1bU=;
	b=Db/5QcX+eO+z3mIEpXAIh6s6PgdDA7WXxihg6Bdwz0gzt9hezDkwOwe7tK4Eki/h
	gLL2n/5JCtkmOLBH3q4Za2+TXajIihmwNZXpSeCGfj86WV4RG8BVC4E+TS/x2kjwj7I
	qskVeYpxWfpu1v76xzdulHUmUaX4DQ8pmMYcVNhg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649637238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QmRDGQuThyj5rWr9HicNAnRufAyfJBg5+wqHqdtS1bU=;
	b=OmSH9JPPaVFKiev50FUnTvPHuGRU4EXeIfd8WWa9JAk/ievBHaZ3NbToUkkgBHxH
	374OZCkEp7jUVotK3bT6mozOLUSt01qDDFPZUXMyttdYprWY0Ro5QW2yd9g2frogj2P
	EoDHqgfyUq2SjM7ar4Ndmad9R94uzS4iVY9No7SI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180160aa605-50548a33-8953-4921-acff-e5676cfbda47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca269894836ad9f81bd85f0c4b112566aa654ea5bd7716f4190249dce3070a11
Date: Mon, 11 Apr 2022 00:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649637238
