Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0346510E6
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 02:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651977598;
	h=To:Subject:From:Message-Id:Date;
	bh=YdNer9vKoz5jJKJEpwsMm/dhTFPlOzlip1b1Z9bNA+U=;
	b=Uu30LUQppFxqopAsXD1TAXj5IUZSnU0N8xkFXTQo7UjX0PgwA7fxgBi5Hv6ejMyv
	y3I0K4D1cnQxeLGasEdpoUa3A3ELmCAUEPnd9tpzO/fWSJpzBC/nuBjJ7ni/UMjjy9O
	/MKdZDQ8KleQHJ0pb9nZJxKAiRn2FX26J2kr21nU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651977598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdNer9vKoz5jJKJEpwsMm/dhTFPlOzlip1b1Z9bNA+U=;
	b=DEO4COZjAfCMUBL9uAvwiHzBxAxZLpMvWAbky922Ow9MZA2Nh0lR79qlbwwfnho/
	JdNwMo4G3/XZow3HrK/jmJI8JeGKzma6O9NT5vssdpWjulU+j8zCEgZlL300PdHrr2/
	yqBXvyuV+yXAqATdEWTsiUPCs5XU2jLMv1HsmakU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a189b533-31e226dc-b875-489c-9490-791425b0f8ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 847377a4c2f8b398c6f7f04c5f4c3195c5dff9114ca3e21d086266f8e64d4227
Date: Sun, 8 May 2022 02:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651977598
