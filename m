Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7C01857
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 17:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654365059;
	h=To:Subject:From:Message-Id:Date;
	bh=STnIugH32pAGUq1y0FpB2F/rLoHeC+cj1OfuhXacBAg=;
	b=lCrgZ8QJHS1dnc1eov6vcqrPkdbx2ZMy9RwT1pZ0np+nIIlCA1hgo628SFOhILzB
	E/r9TlgzKBybxO12Ey0+0hpFKK/RxNLsdWY3+2hFC+RkpPeFww7aQ/pwhQOo2+UluI2
	R4wl5ZhhNnBxy1SBuUgkoUMfWbL8NlsErOr1QzYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654365059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=STnIugH32pAGUq1y0FpB2F/rLoHeC+cj1OfuhXacBAg=;
	b=akcsLcf4dWMR11hlP9UbQ2SFKsjHhE2yqYQ39G5n2n8KWU4PO0wILGy5nYnnF22U
	zYSJ49gmxWf1rCAmVmDGMoHWPSG/Q8IKB7V5+fn/+0NhXucuTZ8mJyixmlgpe3tNUxo
	WbrDVK8zHLqHMpiea653oEiPE7ts+iHXsYH/qz4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812fd77895-9eee59f8-3fe2-4798-9291-fff69ca94b39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d94b484dff5e4e33b6258b2f96f14f56ed367bfad23c263a81c34371f679e063
Date: Sat, 4 Jun 2022 17:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654365059
