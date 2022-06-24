Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF9F7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 00:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656031012;
	h=To:Subject:From:Message-Id:Date;
	bh=5/+4YZ1EEhG4B4CfwQKh9slkc7J8aOXnXRqZOsalr7s=;
	b=CbvXkeX76+vt199vghZYjzdBZpz9txVRP+C6SpAq5ULDoyA3B9PIxRQBoe4gHhDp
	5gO9EfgdH3J9goV9r3ZXzcLPgkjvoTKwWLsaxruX+Q6WCQ5DX8+4FpRZI9EqeF4QrQt
	GYaIxvs51F6iQnAgIHewRdqn/rCzUCnq43MaMsNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656031012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5/+4YZ1EEhG4B4CfwQKh9slkc7J8aOXnXRqZOsalr7s=;
	b=PmnM1iWklZ/Utu1sipoHyPcn7QYLMQWs70omxkMaUl5Siao1I3R/B0SwDM0ldkux
	CV0KaXW2/ojkzzV+jEvMw9foXHz28Dxqsd0/F6BkYfWnTuamuC4s1pWGNdieYeiMfbk
	IZLPPU59OPYqEhetDA60aex86BlRWCvr0TUfRsZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819323e5fd-3f5fd4dc-5bb0-451f-a70a-bf5cbc8d1048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a36f8ce76773c5ea34c7da4f75d97e34aa34880bfe703b5bc7ff8fcf86eb9c1
Date: Fri, 24 Jun 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656031012
