Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAB11876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655982719;
	h=To:Subject:From:Message-Id:Date;
	bh=CNRzYVZFYdEBCTIqpXL20hNAGatbV+QO32Sur0PUJbk=;
	b=I90JoIXQJmglKy+FriDZcaB70OIBw3XCrxV9pJNGLObiJbAbgBkKmXlo1shG1arM
	o4FycDdqSGazOqRpMTEbsTV02BSALLl0eUks36Xcya40s/uPuBqOO1VpSg/TgtxoEpH
	OZprB6HsKV0fNxPasQqvAYD5GUIgUtWGva0ZV5x8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655982719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CNRzYVZFYdEBCTIqpXL20hNAGatbV+QO32Sur0PUJbk=;
	b=Lo6Ub5PEJgSWaASDXFOaFeCDYO/02w1qXbvPyC4yn2WkDqOOG4h/t/r9NmxI/Mwj
	60ZcOixUf9lMjqdGT1Ddv1UrBxEG2u06qKCJe2I4F3pqNL5Lcj4EmxO+03Y81SRnMjP
	w3esFfXkq7As4yDRQ6lQQtHwCArhRmIrs33DMtaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190430149-d6812b36-3b25-4755-b4bc-c1ed67968e18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 441a2022cc952c355532a4bf0ffd74d2bd9dd64f0133ad4d52d085ffcb2c460a
Date: Thu, 23 Jun 2022 11:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655982719
