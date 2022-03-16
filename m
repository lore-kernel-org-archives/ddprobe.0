Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944E928E6
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647411384;
	h=To:Subject:From:Message-Id:Date;
	bh=TpmrmxuqCPdEZa5swYd8GRzjoq0Qz7XK2uxxIloGEWc=;
	b=UG9jEnoOFyStDJg+sGuDodmu0G9wEMUrbkdPw1JQIBA7FL9a5G9uD7YohlUi31EF
	gvVlyOrwDXlWCDLnU1/uO1oiuZffrTXxvlGigXta+7SnHI6e+gTW93L7SJAr1Y0IK/m
	qIezoQeMPy//tXCTEwnNyBdQ50ovfcs8RG6bF0VI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647411384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TpmrmxuqCPdEZa5swYd8GRzjoq0Qz7XK2uxxIloGEWc=;
	b=kmJHAb802omwiLP+psVFonHJAe7dm7hv8VrLRv4B1B16f6jJvMOcc/yCsu1Syolj
	m3HGNJGVgQCLygMyTBPGXu7Lap/thTmiqyLBwmcEpRZLqvkvc3vRiF1hKg6acu/zOqe
	FaNfhrD34RilNqh4NMEOxQ04Ee0RHN9AuNcIWGRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f915ed19c-b62aa393-dbde-4435-82af-95a3aeba6c82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a43662fc611da88ace6c1e0f59710ab3dee957796233f930924f7f9bedfbfee9
Date: Wed, 16 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647411384
