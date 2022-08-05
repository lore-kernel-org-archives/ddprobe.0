Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EDC2563
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659722452;
	h=To:Subject:From:Message-Id:Date;
	bh=n9w/5klOxphU9M/OZk6tSpZJH75cxX5+eV7m1m2BbVc=;
	b=SylEpIelZ5g5BTULMe6Sl93dcoGGGmg9wmNNzNOwyyOwq2+nhqtzGaQc9i1X9qUX
	mj+53szPwPx1SNTHES1gul7j2Bp9nLP3RTKX9GKgamuverIgbSXPbhtsniZ/xTo2WZi
	/TlbY+Z1ErZkiXgjQ5eoNvdSH7e9cwGPgKaI31CQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659722452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n9w/5klOxphU9M/OZk6tSpZJH75cxX5+eV7m1m2BbVc=;
	b=IU5F1jLPp9NFCXuE62HNvB9tD9Q3aQRPLvjZtey9ljZk8x2NFprtxZqcPBp0oIzu
	3f+0VeOBBoEqTnhfU4NzQ2WEm30z9KwVUK2Pu+9so5y6I3q6IY4YKKzt2ajAqx+6UzA
	2ar4k63/cOpeogOq0rYDNq4WdtvZdr8O1rkoia4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f2ace6d-77e1a819-a4e7-43c9-932b-e536478bda24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf4eac4d1f7c3ba7213149ab571cde11c4b2dc59ca53be9c4944cfd0f5b53e44
Date: Fri, 5 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659722452
