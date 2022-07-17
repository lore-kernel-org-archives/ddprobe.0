Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E624E2906
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658095612;
	h=To:Subject:From:Message-Id:Date;
	bh=ftXFx0dRzTr/8l0zqpTtuVEhkfDZfiPF75D1AVmCXn4=;
	b=kVcr9i/nC/DuDUdHt0Scxp9FlDOgenc2h1vMYdp96moMXgwAzjk52riWKJmWL+/r
	RN6F36/eRsceKSxHv1onpsNOT8eA294OLI3Y4b1NKjiLnjLD+6V5nw4AG/qtTjgu18L
	QGzuM352Q9S8iVtY3FXqOZlYAGNqEypBdtfVfPQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658095612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ftXFx0dRzTr/8l0zqpTtuVEhkfDZfiPF75D1AVmCXn4=;
	b=GfyhsB+6sxvb39Gl71MXDtZhO4ZmO3tjw4rg1XEO+4c2ogWaReHKItw3vX4mOgNr
	YDFZjOj84Kqnef7yZEMiOjlhk4Jj+4NTWI6b9LQc1sMjFy8IQ0oGasPeUAwRLMlSx7y
	T0uZ+4XEzSUwrfjWlTJm6Y+ePZ9kqnMWF3Mh0Lrc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820e333157-aca62e66-ceed-46d0-873a-072b70b160d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e94b0f05216e82b57b9b8a44f2ec4f0eb32197fa323595585f254e043be83b01
Date: Sun, 17 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658095612
