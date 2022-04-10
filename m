Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B43AED0
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 18:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649615998;
	h=To:Subject:From:Message-Id:Date;
	bh=sGDsa+lpQvd/neOIHdF/d7PBZGUIrP2O0yMsX3n4Dc4=;
	b=WTjAyDHW4MGjFWvZjGmrMr/wT0943XA7v2Ih9LzFqO8NrBkWmAVsHxGXSEHKbgJR
	g9CF+dtpdKrdj0BAZ3gP8601Lo5y4qR1arIqAPWWWoC1vYhb28NyW/1EjTbN/q5CdLL
	/Wc9Hnl19+T7bYaePn0VDoyQza6sYfcbKvrUlQpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649615998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sGDsa+lpQvd/neOIHdF/d7PBZGUIrP2O0yMsX3n4Dc4=;
	b=QjL86eaC1hVRSDLaToqd5Dqcge4fMed+B/oawqxYmkiD6NI45GksqnfoObjQ3Mu0
	7qG5cMP2J+kQzQzuLT3iPtB6AH/0uffVEEuZarGhCBVaTpJWOjthYfJgZ5xryxmKAoV
	dSwsP0BTUSIZ86FT+/Syc28whWNGFs+Nzegll3i0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018014c68d4d-843dbe64-f519-4133-8f15-b943e808fec8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb49faec874b5b544f0e8a8108a6452417141ddae6969c4061ebb79a6ca11f3f
Date: Sun, 10 Apr 2022 18:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649615998
