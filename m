Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9707FF
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 05:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652678819;
	h=To:Subject:From:Message-Id:Date;
	bh=AViPuUEVWaMJEW8o+mzGMn4+ECu5A60HD0Hi1r3QSU8=;
	b=ZgkYS5n+0Wciaba+N9Y/RD2YhMGeQfmzS0Xx5QbqY2LD3co4zbXPr1ET1krEaFuQ
	lgepQZqbiwgCcpynth0Q0c6qDMzOPb1vBTrRSs4Yp00UWYy5HTtCDqao+0xPJylrVOM
	mCV6tZfPEd7FXqanoMIXRFdEZamBbbmYEVZ+sFAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652678819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AViPuUEVWaMJEW8o+mzGMn4+ECu5A60HD0Hi1r3QSU8=;
	b=ETZYzNLaUPBgnyFzvMbmNQ5oYV2s/cY6KbV4tuTP/3mRqUF5dQGFNtp5e/w3uVcJ
	TUnjOQf+xePqsjX7KkJOm1RHpAolBDSNZRgFuvcjWV9BT9V8T3MhSUOs79gGtPgCYN+
	DTo3VrMJr2wiw5y/Czrw5nrej8N1oZfPgr1cR278=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb557dd5-d5e6450b-ae73-4d65-9f65-408c1146308e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55c3b35c6a3f86c2bbd6049ff3aa5bf2948587884799e3a0621cd8520d27087b
Date: Mon, 16 May 2022 05:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652678819
