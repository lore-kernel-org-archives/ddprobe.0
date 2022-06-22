Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4197E10E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 09:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655891579;
	h=To:Subject:From:Message-Id:Date;
	bh=ljP7bIU4w5wPe6mk9Bq3jY1dIEoLqTfOJlfiLxi7LHc=;
	b=iqvWJoivW1D20Sk13mYbz3Ao9/ygKq9rNmhm6AtHX4RxI3JAX4ZERyyPBEpnjC68
	pp/BoW2L3NOoH2xdXzIXtvQtSatQYiS4p6ePDGpC1y3EUhJVqTJ55uhoSJgXPwKyyUm
	D80DpxX2v6jkR0t4VD0+sCs400jJWEW1T6eRRm6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655891579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ljP7bIU4w5wPe6mk9Bq3jY1dIEoLqTfOJlfiLxi7LHc=;
	b=H1xlobZ77bQLGSfOcN0bRpOWEjgXUrF+ewX6whNklf0KMQoEPjsv0ZBfZo3x6dg9
	2VWKT23pdPnnRhCXC9Lyp80Iz2tV1cFERna6NO4Wg2A88/kruIww7LYfsRmlCUsiG2/
	JCtJqeJiZM/QIqE3o6aTJhRSpt1ii8dVyWMMshzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ad45186-4b8539a8-738e-4506-ae2e-4aacd6c68523-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbb759faa8d0c33becb5232c12808e628e3907d2e1c1cff06892262068ee1ff2
Date: Wed, 22 Jun 2022 09:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655891579
