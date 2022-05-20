Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE433C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 21:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653082919;
	h=To:Subject:From:Message-Id:Date;
	bh=50ekkpmGzDQCwAlWQ3IkFq5NVsU9pBMI5awtsq3pZEM=;
	b=lUtIQvILfNPD/cVLQitXWJxqOlKm/A1NfuZF1Sb2Oi031ePGwF931664NgseT+L2
	6i79OupC32F2AQ8rOB7tZJQ3b+sTH5fP/787e7OtksUNlYo5NVfxF659jteXewWriH+
	XsNDou2IuY33Gu+222h5KwlC3N6eP+LYrtghrD14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653082919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=50ekkpmGzDQCwAlWQ3IkFq5NVsU9pBMI5awtsq3pZEM=;
	b=Jfo5t6bew+HrXO5jc6uG8sfhGaDZy0BRsuL31rCzhVOjMMPFalzc+sqCOXVBk95G
	/Ln47nN8pkKT8dLQJzW9VT2wuoFJDuZc/Qtbtl/Bsu9hAF2IbP8vh8Vjeiz6PPhX3Si
	/2abDNhIuytPJYQT3wUVT2hgrFFbFy+x6zvNQrAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e36b91b6-e243beba-9b72-40af-b064-365680e5282a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8162bfe5ae61c6c7b03504ba00c729ed9a554eea054e97c20086752733a6f701
Date: Fri, 20 May 2022 21:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653082919
