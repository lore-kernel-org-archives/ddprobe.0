Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B26C3D6E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 20:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655756639;
	h=To:Subject:From:Message-Id:Date;
	bh=hIkS2e3TcnocN6HINNzkOVn+I657/AcZMwSk7jmTq40=;
	b=Y7OP/cW/nlizTHKlGCcIm5RsozWKO2trMiFfCQM2ytf0h8fXao6rEYErbte/1vti
	NAjvLUQna2snhm3q63LyHi0uHCEHbCv3j9/Z62fD6AQpF+UgqWbCyg+l73yhgKUsNCx
	IO2BNRc1virc0jNvyiqR6ZvOxMmTxcXnHqW6dCOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655756639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hIkS2e3TcnocN6HINNzkOVn+I657/AcZMwSk7jmTq40=;
	b=Pq1Clp55Mv39NheHxHMLx6OV4k9QPFzBuzEpiUZiKwlGYkZ9Y1ZfuEs1+1SpC8VV
	8mlU8W+sPa5mo/G+Pdtxx9hvyJph+dUZaH1i5HS46DnfOrWGtG9/hYTLCWzqbRZsm1G
	IThJUyhhTrjpkhi6NUJYS9imM14iz/nDcUKSAbao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182c94c26-7922f446-756c-419e-89b0-978a49d7c0a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ada507ad6ac30698ed39e99480fb31e865f89b0cc70d20e86fabd1ebc52dde74
Date: Mon, 20 Jun 2022 20:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655756639
