Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDB920EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 03:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649300818;
	h=To:Subject:From:Message-Id:Date;
	bh=OCdn+SP5ef8gX/exh6L4c9xTsomzcw0/enS90qiqpv0=;
	b=jgsNRXvxwtBhv0921Db+gy8GkJkd4yBBZlXtQgXWr80QL59ocVD2qLjo4wgP+4rt
	UX3w502EAWEAQsBhhNdgx3dLSbttFy1l51KVDP2Ncezc+i3LiJoCSvpBNljtauUEkT3
	XZRk92WrdX4hj6mbKdd49BnUYMQ8VXU9zghuQvAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649300818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OCdn+SP5ef8gX/exh6L4c9xTsomzcw0/enS90qiqpv0=;
	b=jDsUyAdW35G19U0w6Fq0/KnxqtimMm7i2YoQTUXE86Z+85G960DUauAX7BqxfrEa
	vDbWYXyWy6ZyuY+RALZu+krMlPb6wxrklNZpxSC84NI3aI/Yvn2CNgSQQrZmAHxkbe3
	JIk/NnYK7LO/Z++TTvnsd/DPkERWAKi+m/qAj+po=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018001fd4966-620d263f-5e41-4847-be90-5f73ac64ba5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c7d7d2c4c5e8489815f9af1805e823fbb307df823f8eafe3b50cab13071361f
Date: Thu, 7 Apr 2022 03:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649300818
