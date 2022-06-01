Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BA87E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 17:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654104659;
	h=To:Subject:From:Message-Id:Date;
	bh=zrQwk0EX4DP0z1PcztetNTet3MbwfKY2RdDa3LE5UBg=;
	b=ktdN+UN9OJv6LlFd9auPXkBfZb9YKNf2UYm/dYqExrcjLmztXVU4R1epDl/Gf73d
	MQ1SbWA6PAMKCmAeNENteZP3iPE7YRQAlrRL1YEtycCpD5Odartq/Lky82ajIpsF5Jb
	HxXu18dGrMGwiQfH3zhJcDNPGZHskmAG0FxmZWko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654104659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zrQwk0EX4DP0z1PcztetNTet3MbwfKY2RdDa3LE5UBg=;
	b=bLaMx7Os68sdigU/iVuVwWjcbjOCsBIzcEhjdIWC6Ptlq/rvk1TV9/Xk34gcMOnV
	RdM9bz6NxR1U1rbGZEDAcNrtA2ICTBfOT2BsO4Sp/UaAYzSJdJWRHSWKNMp+9TITLdv
	1dEihg5a/EVBICskClR+46qadxxG6aCjeHgqqlN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120521576-bc51a62f-af27-4b3e-a356-f609f841e3f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61e313868017779b6ec0717253345e36c81ae285ee363cb863ca884abd443798
Date: Wed, 1 Jun 2022 17:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654104659
