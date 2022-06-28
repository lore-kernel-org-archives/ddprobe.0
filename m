Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E72D624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656427012;
	h=To:Subject:From:Message-Id:Date;
	bh=bZoRFVC+vDtHivgYvjeMtEm9zius3YdNyzgjQyX/He0=;
	b=Pw453o7Vs8pxXUI4z7fpeUuTh6WBxEW9Wq5XpY06BW2GluY/ud+jaHKtoMdqQQsm
	foaRo0N1YzyS8dhnHtbFlv440pC6GiB29atYMVaHohchSLe20VHgGYTLp8th3Q4EO8m
	4Rgjll6C5LhgaQJrKlatA/05QZXKQNL8OjiVx5V8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656427012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bZoRFVC+vDtHivgYvjeMtEm9zius3YdNyzgjQyX/He0=;
	b=PooRzXF20JLClLVbKF9K4PUfnbVWETZMwGadfup000Ay3qJEGntNj+6gx6Bk5UNK
	2PxIU2UOwbDpgggOZTCAZaqN5A+0174Rrlmy0qcP9K7m+eIDzWDzANQqg0DW/GxJMqm
	sUhZ9UsigkFmWOuZ+AxJalW7BnOMKbQWeVIhTL/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aabe60d0-69a714d5-a7bd-4400-aaac-15eb8fda5fa9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67a768e942bb6466a6ede9b4b34f127a7559a48c269ae3cecdd01e68dd5de2a7
Date: Tue, 28 Jun 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656427012
