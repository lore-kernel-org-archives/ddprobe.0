Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EF529AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647772584;
	h=To:Subject:From:Message-Id:Date;
	bh=JaUb1FAL4aMYqByLDXvE8lIcEvPEVY1pPhqdfLwQ3AQ=;
	b=e7X8/vuEYyiRHf3zNUPx3HTxDuZB/Fvmc4nVH7CGUX7e0IlyjpSR2Wlo7I+Us3eY
	KK4SlO5EO28PYHBHi3Ybpf11oOzIacjzggYwaj4uQJedvectOwgAqWbSD1SvxipiiKs
	kRyMUZ91CadcBpe85Db8iXmAPVNf/qy/GUkIJi+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647772584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JaUb1FAL4aMYqByLDXvE8lIcEvPEVY1pPhqdfLwQ3AQ=;
	b=SwGcVjGvtemKA28SBuJcWpnuaVqwuePhvRwLWXN/942Ij25cv68K5gB/XIgBqxVS
	LNYjSNKbDPlqsZnYSqbB5BlaRM/oWS5op1MwRHaVixGELSCKGji7e80YnkHnaKPXgqk
	BoSwJ77pd0Uf1fq8fWKQ2tZ6lPMN/51vAAk1LOc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6e64b2d-8ca9cc42-53d8-4107-b57b-7684bac85c28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd2376d353f30a16bd45b43d86abca78649fb5fae585a514b1768518eaea2e92
Date: Sun, 20 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647772584
