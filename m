Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2253F187D
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657475212;
	h=To:Subject:From:Message-Id:Date;
	bh=oaFeBQ7b9KrjnypGPvLzX6OULlFpH5SDfqbAt9hTYHU=;
	b=QzzUA9wZ7p0QZXyDMHV5uj374q/g4kmybaIpBllMzJK8ZRBbS+cYtTfMx7i2r4sT
	1hFtjqjarewyn0EMqGfC19FLKpfQWum17BxTdlUSIo/ulvS4MfcWJzk/pBZS5HHhLV7
	Fzbsd26pSc870eNR4UobrXFA1a5f3a1Vdd/QDe3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657475212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oaFeBQ7b9KrjnypGPvLzX6OULlFpH5SDfqbAt9hTYHU=;
	b=Aooly0kmyhaATn1LEu4sgHty/8jTwkLTk48O2z8ltZAJxHaqji7KwxJ/z4q5cSia
	2OUj3Vp3yYSl9SbF6wFmEi084u3zsaYrDMxwejvLOmHDAnEBbf+7nY8DKbbW6XJ5lWC
	nS/OTla8ZImV3arw7SEBkKUa1ZtGnUUusJQwbUTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e938a442-0f1dfd78-de95-4e17-a40d-0508f847749a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8869be24d36f12d634f6898d57c3246b6f6242c08542590b07ea6228f227f29
Date: Sun, 10 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657475212
