Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B395EDB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 08:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654332359;
	h=To:Subject:From:Message-Id:Date;
	bh=91YniQtg0o3u8N3U0yEWvs6HpmaMod+RQUGqiMmoNtw=;
	b=eyEHx56GLUC6vo8ZXJtWIMYjUvPnjqXaLwXPJvjkOgrkXhN55+lPUEv+aP2S/TrJ
	6yJZa+DpuzpM06sUrtLPAKxjsVsDG90H0GQ46yY84cX9tj3HnSoSgpxCkmWB2QNk48c
	yt6GFAP7nPWoeklu/USpgW+0n0DCe/MJuu4goEqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654332359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=91YniQtg0o3u8N3U0yEWvs6HpmaMod+RQUGqiMmoNtw=;
	b=Ncq8USQp0g/om4pE+3fhbddCG8zuajbRFEJfcCmt2dUsnhksU879yXfarizyHGfy
	3p4lMuoXUzA0jftelVzk3tey9XnNu8xqrcqQY0C/K1P5vsTagHDLhq6bvZveDvqGX85
	H0jzbgqDqAdkwEOu8p0OULwuxUjRXpMyRyrW77WI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812de48288-727db87d-b41f-499e-ad0c-d5093a6a0ba3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de13e4b141057461190f90bf53cfe19fd89d194b4c457dfa5249e6e1aa2e4366
Date: Sat, 4 Jun 2022 08:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654332359
