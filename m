Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6681386
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 19:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654285499;
	h=To:Subject:From:Message-Id:Date;
	bh=HAjZ02I6WyBrqvTxokB7B7XME/ZrRvd/au703PSBNVA=;
	b=iaRBcDcrxmTgp3CcNhowjdfSP5bODqFkiIcuQ4oQR3soRS4QYQwTEQ81X94O05Zt
	x8AZjEAKNP5he8PORIoPEzhEiCxWgcbxoTA8q/14LaLCJYTOr9TyTuhomGCFBbGdCTp
	RlpdseEg0WrPRvXToZJUS9OZb88icsbQryNJcIHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654285499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HAjZ02I6WyBrqvTxokB7B7XME/ZrRvd/au703PSBNVA=;
	b=HX+hSJg4ZRzspTSdKFTSNC/mvPNzIz/XSeM7c2oj62fxGjYaU+EM22GThhl+WSrq
	KpQZuJiTXX7pHgNqDHbDfHAQAXyk8flZCvRnPHM7cWE3W2i+hm+dbIvo566aa4HY2xM
	RMT4HdRqobhzuX9pwoLGi9jWNwLWZxkA1avkEk38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b197ba0-a3c68b97-6b7b-43e2-99d6-cb90e3ff2748-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 127df7a362a636dd4254b2e762eed5ff5f178834f085bc108b201e4fbf1997e6
Date: Fri, 3 Jun 2022 19:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654285499
