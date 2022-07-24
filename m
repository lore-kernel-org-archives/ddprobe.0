Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2530179
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658685412;
	h=To:Subject:From:Message-Id:Date;
	bh=HI0OJtkT2/Rj/eniTi6IM19XF5bNq7D6xUaZ5RqT4+c=;
	b=TWIL4lgO0CXo8R1WLKaMKDnTsyWlxj4J2rJMIXjcCFVZLGafxqYiBBU6rCIbqkcy
	H8IMjC2W4hgBPh3jz349fxY0U7ARUijrGQssCD14UnU7qJ0NdF1rIRbd5iBKTJWAxAX
	wHVe8WAa5iYstMvcpEmmn2zupT3gm/GjFP0SdGbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658685412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HI0OJtkT2/Rj/eniTi6IM19XF5bNq7D6xUaZ5RqT4+c=;
	b=cA6jkubXzjRZA4N23q7VZY6J1LYK8OdMmZzLM5Zl6cJjuknx5xlAOhtucGHaC/z1
	CW+E+gEsiDeZ+qvPDV6HMLrqIpF+W6o5/14ijmiKLgBTHUt4VE3XOukFqCE534ydygj
	RvFJzTIe1BeZxXOYZj/W8xRjiigKsR18QQYu3Qpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182315ad3e3-f23ab814-86d7-4f1f-88e2-3a3b67c957e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c21059bda7bd9399c4ae9afff27b6266b0df68f4d623043078e992d9933af7bf
Date: Sun, 24 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658685412
