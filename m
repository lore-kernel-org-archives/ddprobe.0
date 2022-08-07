Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209731C20
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659851452;
	h=To:Subject:From:Message-Id:Date;
	bh=bgiXVuI3c/bgnVHePRXDmdL3q3GiQ5qdv30lQdXEMqw=;
	b=E1VhW0FnzeC8CWEwNsRC41wr8YRgprNA2md0ntWmLrVWUyzlkCJBi5lonAgSWt+r
	irgZeX1rzACz//AmXr4NOzfQnn5pSD1BZU3bMk9n8/RsjzzYP4hKnuFdjrE3RMULe7x
	QGUsQ/59cQ2szPKpn1PxShPe0ukbs28ANv04UQus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659851452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bgiXVuI3c/bgnVHePRXDmdL3q3GiQ5qdv30lQdXEMqw=;
	b=UtvX1DXUxjWa+28mI2Wf7DmICIalaXrQaYvX+QAnT9I4isNBckpqYods6tTXmn2s
	dSv/YHlil0wILoGRHKOF884VXdLmE7/+qgbLLwP+9OnHeX61OANZhqKTw4JfMe30tol
	gJAOZxNfAMlT98bs/7WEV4/o0WkcM1DHvvzUAZ+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276db309c-291b6876-a732-4d51-9521-68764dc0acd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ee9d695ca33c8c9f050757ee15813588b064ad21c190c74e08b2b12ead00af0
Date: Sun, 7 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659851452
