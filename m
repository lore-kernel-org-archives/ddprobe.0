Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5871E3D8C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660755052;
	h=To:Subject:From:Message-Id:Date;
	bh=uC3vYCjRo+oaivCDIY6gdTs21q/5kCSxWREAAboLUos=;
	b=V5MteOaOtvZOf+eZFIoaEvpAkRUjzddkVEw3UPniIPWazOqVJ+TPLEtJVUGmUXnA
	eqwe61KpTs7e6fdwoyajQDD1H73nEl8lW9Tz2/FXSk4y3awvnlo1ogUGE+pOx2LgTr4
	KmEg1MUGiSni4JmD/ICRtMgQJwS9Dsdy6rbrLtTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660755052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uC3vYCjRo+oaivCDIY6gdTs21q/5kCSxWREAAboLUos=;
	b=YR0iFF5Kb2+90VwrUBk+CNvstPegUf11wz8YHBwXZl05FxA7F7xQqWuh2MHJ9YJb
	E2o7aLZvVhtz5gqlIxtDtKZpZlKPL41HNb8VKBiMBW3F7gdruCc26RGok95+PfaYeiv
	rRgCvOLwtemibGW8SvtcKj6+Fc1pA0Tfw2phFYtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182acb70807-c155eae6-a64e-4bb6-ad9a-78861e0eddb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c73dcd7a242ca10bb5267f353cdaf70fd1e1f0cb8c25e39190ddbdd5aa6bb1ca
Date: Wed, 17 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660755052
