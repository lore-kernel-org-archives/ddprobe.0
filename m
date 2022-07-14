Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A066030
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657838812;
	h=To:Subject:From:Message-Id:Date;
	bh=aJc0PCJVWjqEwqm3v9jSXLR4zBduWCfQ/akDUzFC3HE=;
	b=lesihec+U/iF38vvtoESimRAkXWJ7AoOPHOmznaqh6mYyLThpNJ6j/24P/jqnbJs
	KXC+7XAyAJDUPCrckO/F01FazrXqvcuplVdqeH3RwwdRthoumeacTmgt61Ir1e/Emd3
	GrWl5eVJbIql6/g8E3oCBRrIPQuqNmluT+DF48Sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657838812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aJc0PCJVWjqEwqm3v9jSXLR4zBduWCfQ/akDUzFC3HE=;
	b=kMzuGBJWPXy2Ij66sEOVS9eltvrzEkqtqDE+ZyIwI7Erb4ZAN7wEQo8oFe0I4kwn
	8+GX6o7/rWw5hxDPmD+od5V8we1hvJw1aw77bQkfH0nRpbBkTfHZ9BMuDam2v8kxV38
	LGoCulQ2YUVlb83h8sVfOxUF3GJouvm0EB5GFLS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fee4bc78-5204f3e0-a506-46a8-bdd9-b2c78d2782cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e6c6e9b71107bd06966458dbfa5f43ff28e7c3a4e7abf39cbf795b732cf6004
Date: Thu, 14 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657838812
