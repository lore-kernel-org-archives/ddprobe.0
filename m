Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A8420E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647813384;
	h=To:Subject:From:Message-Id:Date;
	bh=3W/KrdnbU5tnEOSjLucNSGivR1QrY9lN+H2Z0+NRTnk=;
	b=FOZobT7jLqIOqmqECe7XCiUxHhNrmyFdaShwncCap4SP+Oma824+lnYbzXfL6Wqp
	p2FhsJwud3FPhipAW+CplmMLh9izd5B1w1ewLKKcP2fDRBc9F3FQxk+S2WWuOeM/Ord
	ajz3/TJA7BlUDA8vDunwn+UahBzR/xr1cUaoNGac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647813384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3W/KrdnbU5tnEOSjLucNSGivR1QrY9lN+H2Z0+NRTnk=;
	b=E6SYxgW9iTKlWCWsOkmxtEPdDbNPqLgbxr3epCmmraqRe/y1exNEr0xFkgaQuSi2
	MKB9pJ9aydr/sETeQLxaligI2PmGqNLrj09nu5nQM9EZDj/BVSOHclsBtjK+JAp+ZFk
	4rvBWJIyXmbul3l7gGrovIBMzMMjTIkS9srvKXj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa954da1b-d78bb143-0513-40cb-8060-94cf07f5a219-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d1460a436971fabb361421c0aedde917ecda7fdb5dda12595b8b7dcd5d629b7
Date: Sun, 20 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647813384
