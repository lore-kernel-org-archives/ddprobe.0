Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E477320B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656268012;
	h=To:Subject:From:Message-Id:Date;
	bh=GnC5gZr/wG9jiFJ+bUoAqhy65az4WdfH53OIIzPGBs4=;
	b=Tz5j78fPu3DkfQflGk5xpy4OqWf6nK5Rvn+3Y2VoUf11b18UJV5yvWB2Jequnai+
	+pV+19g4wn5R7OIV9TeUiG8Oqmejr1LfbAky+7O/6qwwVSAuv4Z2hkLdcOT7l6sKJMa
	qDM8zYg3EuCUrYvyltgqlQkQhhhZd4c4lJYxakvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656268012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GnC5gZr/wG9jiFJ+bUoAqhy65az4WdfH53OIIzPGBs4=;
	b=hMTkCNMbOwGURukaOgppVTvw6XU0Hw85BqHmGjFgN4kI0sambKW9dvCwRviOyJ61
	WnFIVct1x6Qrlj/OqwAra/HJNYnNkNEFgDYbmez2t4bgT2T9MjQnbaSsw4txxBwGUvV
	JEeQNsyzov7Yn/S4udsdaJmS2SLxsm3oNeRlltP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1443b25-39c06105-c4ec-4365-a272-73a714666766-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bde7d537642caee5b6bd9f771fa9939dbffa136c1e603917cc0eb6c2b0a1599e
Date: Sun, 26 Jun 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656268012
