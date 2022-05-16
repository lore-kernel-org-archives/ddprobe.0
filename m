Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFCA136B
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 18:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652724239;
	h=To:Subject:From:Message-Id:Date;
	bh=dV128wYeZJQMU1QV5OMOxzWpd82G0sLBO6oO8ds1KXA=;
	b=BgQIHueWAMINNtbgCO2ayAYuOIP1mwYp37uvu2inaht1hCSYsjtdH47Kzv/eD+Kn
	hMoZ2UGHV87j3v8phwnoel34H3YWQKarl57Tm9HjjoylTVy1E4Hn7AreRMpc6XqYa7B
	HxG8SsD6ADgUDVijvV7E5y7kRksoRqo6h49tZUAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652724239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dV128wYeZJQMU1QV5OMOxzWpd82G0sLBO6oO8ds1KXA=;
	b=W1niHEg3oVu8xT+qbK2cdTV5Kzt/Vfp0U+QiW1BMGksGbN0Vda0vrRZL6LXAYepq
	G+/U9xVbc4dnwUPiHlxbH1+XSLwQQGoLdiPJM8/e25jDXCs7HbnWQpQJD3pv+nnUgYl
	Lxr3a3C5iRHjdQjKB+1WZCjETac2qDyf2yxzxYnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce0a8c19-e369b3df-441f-4868-a89e-0bc2c2352363-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f75c4db7468a602e6fa397e7cc7823cd96f533f760bfd45091d0ee6255845b05
Date: Mon, 16 May 2022 18:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652724239
