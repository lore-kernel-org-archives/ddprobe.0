Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABA6196
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657006012;
	h=To:Subject:From:Message-Id:Date;
	bh=CCI5EMARHbJ9ROwyhVUoLNEf6Ilx3TOspRQY0EkPWYQ=;
	b=F9O5DLKixXPWxTHjTSCIhNrnR3eWVsnVeEhIBFSmaP0thKzLglwG9PPx81jLGR7d
	rqvF8TWqdRdPM7WGlG4JHE+bLC/Q0Iy0brsmQBVAAA6FlWN1iZ+CZmqAP3ckm1pFSh4
	3B6lMZtGGbfLDVbc1v9DKgNtxqNOZxw1UvecwJx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657006012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCI5EMARHbJ9ROwyhVUoLNEf6Ilx3TOspRQY0EkPWYQ=;
	b=RW31X7iwG3zmAH6fMOiFliSqMl74a6oOUkoNKQL+NhUTnr7HJlevgb8o4ROVNHL2
	JLM9CT3RrT1Z0PnVR69giJF4JvLIVEKGWzKTGgOeKEDzfjAQjgOEftskxnPS5rKO3te
	GKSAyHd2R2JV5TkuxxqYDmRrSVweJiUDxzcxqFOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd413742-0091bf79-26ab-4471-825f-22f35e0ad1c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5013fb5a78bf149b7b0da93017b166c8bfa3a6e9278309105054e706f1663217
Date: Tue, 5 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657006012
