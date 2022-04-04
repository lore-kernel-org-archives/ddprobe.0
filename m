Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B922F25
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 18:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649097898;
	h=To:Subject:From:Message-Id:Date;
	bh=q7itiMT81mjXuaSI4hVc49QXFqNoLApxL7P8nP/gnoY=;
	b=ZyYnpQ6GUT0nSC7NF/PMjvG/zRrnK9GhfpeUE5HNRdsKbGVGC4HFAkVL1XyNdtSX
	jinl21mH82xzt/nTblfTLHmz1h12D+1f/TK6/UoJhNIBPPKAh9m4NWnwM8cJAYdtEUi
	0oLkSQWmwVpWQz9H6y5MDqyqmpDHROSdDCh74638=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649097898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q7itiMT81mjXuaSI4hVc49QXFqNoLApxL7P8nP/gnoY=;
	b=jO7w94FCihSesQBy80xlyltRfZV8Kf6q0D5IES3MN14HPQAWQj0Xn3h7EEUu0Qga
	lGcNPmERnqeBRpe5MtNiIqcWndtJqm3U1H0NNm/98gBSraV4dYYoJZl1hgiaxxYI7LK
	A+9xSOlsfC6BOm6qqTPA3Aos30tJ8XqHUeSeuFSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff5e4f8fa-23c02f00-4cde-45ad-a854-09781b6a1f88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b74f26c33e463d0eddbbc0ea7f276dd5099a4f2b9a15994d22f4a31735d2d166
Date: Mon, 4 Apr 2022 18:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649097898
