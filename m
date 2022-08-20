Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2162F29
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661012453;
	h=To:Subject:From:Message-Id:Date;
	bh=SxegSJZaof8+pslsl5QGzvDOlN6d+sgeWsilOjiHR5Y=;
	b=adcES/y5T3/lEXRFhmSueLmsatuCmDRSg3oPLCy2TqzuG323qGwsixntG0BrICkO
	YDjOyKMtcIqlkZIHsAyQLGkswrazC6nHC1VM40bYM+2nKgZbzwcVsajW0azzgs7TDDN
	BXeKeHMJxxz2cmVrXgacJy9KbqGTsEiJFueyHwxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661012453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SxegSJZaof8+pslsl5QGzvDOlN6d+sgeWsilOjiHR5Y=;
	b=Vt9lE5jbyQK7qxn4lSLqFOqYc6UQR4xWSew1Xp5tdRCO7zBafaLVFUywt+Sk6bWj
	w9AHO/6pWMXPRI4rQtZkfdWzsHe3O0w+deP3OtvdhkmnvmmO0IEQXx0z26+zR6OVEiy
	IDHR+wtpMH89xuXgkWgcFpEvhvDDsatbUN1hDsI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc0ea4cd-a1cacb96-b901-4f9f-a5bb-a2884f23f04e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5dacb4f34789a70f5b5fb3240243752c3584ca03149560f121aeaa241d5c778
Date: Sat, 20 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661012452
