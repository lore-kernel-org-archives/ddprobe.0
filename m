Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA192F28
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 16:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653235679;
	h=To:Subject:From:Message-Id:Date;
	bh=/042wHsnUXXUQL0DhLcdPmeCqCSEFbeiDXtFTIrF550=;
	b=VegP6CiUDnxxYFHfDwnj2npIzlu4sEnHvrBtAk0eOgTcNNJLNjZbpoXPdpO751Uv
	l73/vsd9e25Fv9UeflINmH2Ji1DERaPaFE3Btxf62FO8NK7ztJ5wxEV5xzng8HrIdG6
	QIJzmzfpQ/i7AFjsdgJ5zE7ZKZiTuYOCNoPpCBi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653235679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/042wHsnUXXUQL0DhLcdPmeCqCSEFbeiDXtFTIrF550=;
	b=TCp947qPMErDyyiC4lrrpi+1y/EijvfUgrq+tiziJZtSyuLEZHuULvC+BObSN4iI
	s453fhx1USGubk0HIPAsKxs8A0jU/6ALM6Jq3aT8R9b/cHmx+CQbQNoIFvvRhFaYhbm
	EplCfWtuL5XCUD2zk3P9uVlBMv0akmUL/Qcs1+4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec868027-2dcf23bb-f91d-4bf0-b1b4-1e5e1a58daa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3952b578cf27cae8b1c1b86b97527524d3a5b99cc0a2c9ab4719e26edf474cc9
Date: Sun, 22 May 2022 16:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653235679
