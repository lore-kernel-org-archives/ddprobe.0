Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788C333F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647792084;
	h=To:Subject:From:Message-Id:Date;
	bh=CUGxiIUEUxhdoFzo8LSNSaN2X37773Zbz4bTcYRicdo=;
	b=kQXQIOEN69jNTryS/cLr6lgkxiNrz80w3/0XJoRUMbTn1Bf5IiskA2sbZEhh/WOx
	KE48Tutylv2Lhm8IzZF1aLHDc21YmqROk0BhJgZOqYl2KaBd8c3u7GEtTAcQa+0752a
	eKlWkI13Gsi6RNo+Mv+HU+V3jl9+flcs3wh4HdX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647792084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CUGxiIUEUxhdoFzo8LSNSaN2X37773Zbz4bTcYRicdo=;
	b=i9znvI/qzmBVnwwKY528pvNCdZ75fZ2+D9bemVujHzRgA8qPiMKwXwUCIz3tZ6zF
	l2Efywr8J55jA02Sttdnfi1nBYGVBf6DTbLOaWhxpxeuAqzX+E2BiLzC2LYwcXoVanG
	U+hYCeIKN5VbJo715GCrNCKKQ2Zri3kgt1ShEdos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa80fd716-0573a02c-650a-4154-ac95-9bd5cc10da77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a657beae2cbf67d1c44cb9b92bfd0e3dbd139bef83192aa9c4a2ceccc59b02eb
Date: Sun, 20 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647792084
