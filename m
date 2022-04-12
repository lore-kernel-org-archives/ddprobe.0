Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4832C7B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649737678;
	h=To:Subject:From:Message-Id:Date;
	bh=qzlxC7TyqkLxiCqnMb3rqqh/sl2KN5xNKpatpLFgrlM=;
	b=Lqlt8H+CJJmnZ2/8Gn9kM167DHhG9CPqpLb3OTTNZAPP5bt+d1cdgrKWIrSaj/xJ
	NeFrxwhi6iUJzJfb7FvQ0AT1ReYRSE1cT9bMagZemb7inaWmAIwD1v1WRzKhzZ3Flx5
	WyK6+/xFYzMlLc6oFXG8D3gRrAf4jxghS+9PwWjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649737678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qzlxC7TyqkLxiCqnMb3rqqh/sl2KN5xNKpatpLFgrlM=;
	b=LKWq0OBgUKTCFBpEi5rJ5tcLh0+hdKHEdK3mLtmKcw5K06HG/z/dIg7PEq7EyLpy
	lQOSHeei4RpdBbxzymouJeVtX4H6rRN0/okAzbXo3MPoUCvYEXZwuvne8NkFrfogNV9
	mjC/Y95Mlc3LHTu7zbWeXhxVnkpIV+6camhXcOSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801c073e04-2b76ed6e-5c32-493f-89c3-2c634965240a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fe1e06464c234772dae88d1c2c7953d4c15d0cf834f2ef7a8970152033a602c
Date: Tue, 12 Apr 2022 04:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649737678
