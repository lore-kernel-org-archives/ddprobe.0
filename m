Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E392F25
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 17:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652634779;
	h=To:Subject:From:Message-Id:Date;
	bh=J+eNvXpEzpl4D21i5A/y5xZV0SoJYEyFuE7uP7svZK4=;
	b=FIVdghaEt+sUHcvovyhoaRFUGyIPLyXX5hdplm7zxiLOxFCJ0TKLN+DqMRHrul82
	W/TL0z0JcEsF4J0gCTzgrZ/iCFoaRpf3lIHKZ3PgULXQGIpZCYsi1rLxO3LZI3Vhfr6
	DdwvR5araCx5/lpQy/tCvqNJU2frhdM4CrGJHpzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652634779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+eNvXpEzpl4D21i5A/y5xZV0SoJYEyFuE7uP7svZK4=;
	b=b3degWMWBw5G3Xv7Hfeiw6Op6nxhAnR1Fnwyla/3/xxnjUvRcuF11ApM6sBEBsI6
	f4qtq6Eyn3lDdODakfjYpGx7dnumYW9FuGl6aydDLyW3Rs5YBnXIlvmeOinGsQeDRcx
	cH3QAcm/mG10uMN5IygTgsWAk0gar6kUjcccL6aQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8b57ecc-082a5e1d-240e-43f6-9c71-7ed24d8c4000-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8a1f2c198f876d6dd6af3b680960289f4a12fa49bf303befa0a5672538c0045
Date: Sun, 15 May 2022 17:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652634779
