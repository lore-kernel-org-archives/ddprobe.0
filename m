Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D627A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 09:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650877618;
	h=To:Subject:From:Message-Id:Date;
	bh=3v2d86ZmfveDwn+tOeS4Mtti3pqYEZf9KxdEq3fU1Bc=;
	b=ZSjK+tMF85rQ4ARTbjS/s59PEsYTSi46xkbaLPwV6CVB9UKK5cEkMBI5Jo6gtuqN
	wRSAmp7OLtCAauFUV+GA/4TtRn4zywnRG1ItKXm9PirKdRab01NxB8Q3zpHQljELJNP
	tla1O0XOGK9ps1I2NCmyO+FO1TLDrW/MXbJgx148=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650877618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3v2d86ZmfveDwn+tOeS4Mtti3pqYEZf9KxdEq3fU1Bc=;
	b=Goy8VYn0n6KO1njfqVd8+4ElOnD+hCf5tongeLVnQN7ljAvQlAHf4gaUqza2xSBs
	DdYusMqiU19dzL/7NzPDUnvZUlvkYFxjJ50PrYv60O6O2RM6ofivTcRJ1G+156a2GfP
	eghKucq6awb4X0FoQce4EEJDF7N4AIA+ApJamTOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805ff958aa-7f6f4479-0a1b-469e-ab03-8871c146b606-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e69bf171c4e8e2a74921a8afdbdd91994b5480fee20b3209950f211c53a144e
Date: Mon, 25 Apr 2022 09:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650877618
