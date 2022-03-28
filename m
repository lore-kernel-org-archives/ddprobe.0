Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EA77C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 02:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648436278;
	h=To:Subject:From:Message-Id:Date;
	bh=0p9dRWUwRaFZUdgW+927v3ppMOFxeeWbVkcXFmquBHE=;
	b=XNr6ayV7nwYBxjwn1DwVy/0eFfNti+5uXuxwUT5gLYkslgW41vgKdhsquEOCNlN3
	cQecKviDcJ8qwlNTcME1Iivh+KTOx/KzI2DjTf6cOkIg0tB4pyVv7LG+6JTReff7pX7
	Lm+mbX9H+TEtcHX0/p0s1A/OKH6gAcqbcTNsKPSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648436278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0p9dRWUwRaFZUdgW+927v3ppMOFxeeWbVkcXFmquBHE=;
	b=Sx67NHsGiVKqaa+YtmjZ4vV5zFTJsqnuMW8qRI+JGheMWdXg+LKG5QAultJfx6Mh
	YXB9FlbNmJq+oYXnLSnw5X5DNm/6+7NfJeRlXvWIsmMemrTR6swXcxNDNpbzN3Os/SB
	KNwkgvIvkiHvL6M33x433XAtdnxwbA2z1D3q4Vgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce757424-27b5b8e8-520c-4f14-9f0f-592d32b2de2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e23a2b0fc2b6e6544805a2dd98aa7bb155eecb538972ae7ab1cba6c6d3e9c745
Date: Mon, 28 Mar 2022 02:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648436278
