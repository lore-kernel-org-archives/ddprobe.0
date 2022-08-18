Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8262C2F3D
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660840252;
	h=To:Subject:From:Message-Id:Date;
	bh=gM/OPdPlejnncwigrfDvOxRJ+SDkIt9Hr3IcYDi+dBw=;
	b=TkIbYY82BkypYn1BWHfoXBSR9JEmYfkvH62DbmWCkEX3riRXnH1xk7yl24Uz0j93
	GlIlcVCvYpMlE38hK6PHWZRt4db5/HhXt0xtnT5xKlS1lcmXOOoIWsH2vggCQbph1vC
	anbBJeSU3mDzYuTm5ArwPRZUgQOLDxAusP/oubcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660840252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gM/OPdPlejnncwigrfDvOxRJ+SDkIt9Hr3IcYDi+dBw=;
	b=E7AGNN1r2DgvXf9BTyBD/xeTNmYFMeoJmxK6KJelWU9ZNJl0zpT7ZfjQkO0XyNMQ
	b3mZvXgjpVbilx7qmxCK6UPp6xE31tirryvhTwx5NoqS3XAUnpxz1d1G6UqNzQhlrDo
	bWJzs+HTxiVvR3pSoXdDKv7oeJHS3VeqSACR8VA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1cb1521-fd528369-5631-490d-809d-b1a4244ac820-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b840f02748690559858581d9c8066d6c83be25aded3b43735882a22d3f7d761d
Date: Thu, 18 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660840252
