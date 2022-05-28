Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084D13FE5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 23:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653781259;
	h=To:Subject:From:Message-Id:Date;
	bh=QM/mfDYa6rZzltdzOJbTQ8PHsnLQTPojcgk1zLXIfqw=;
	b=ZbtG3Q6nxKk039Mt+oqSo3l7cP1c6IMi57apylQuiPj2XlKq/zLfY06g4zL6Oldt
	dQC6sGE8Ux4+uNS5pTaieY63S3duee0UlLBCPhutLuFeJoiFqrXqCPciPLTp/Lhlp7z
	8MTiuIbrnhDlJh4+retDE0dXUlsaqi9EUrCxOsso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653781259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QM/mfDYa6rZzltdzOJbTQ8PHsnLQTPojcgk1zLXIfqw=;
	b=j50DHkPCQ1CBIuwRMXM6hhHm9kG2zaC6hq0gsjuVXF3m5cDPClSaZb9kl8pnPRKh
	9bLZS7d0Dov4wtn5jjGw9lOc5JXblyjK9F25//lL0Aiy+tnk6XtAxUIq60i+K+aeXnm
	o//a7b6z+8KBIl9bq1R3ChQ/Y6FJGXG9st5WIWcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d0b63db-4d55ff07-78bf-49f4-8081-f83cf2eb8801-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e01f51e8a0115fb9ce738713be347a871ebc5619ea78472e977febb3508ed6d
Date: Sat, 28 May 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653781259
