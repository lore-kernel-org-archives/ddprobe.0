Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED54256E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 17:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654189619;
	h=To:Subject:From:Message-Id:Date;
	bh=tDQ5TLSyFzKketGUgWcj7nLk0ho7jw+RtknY3cNbWmk=;
	b=B+QJCPllTVIBgza/k4zyec2aAcAT74WRZ7/c/DE/2zkUT88VV3OIwG4SRB8LlT7d
	qblWT3xVnzz3pxLQ+/VlyXwH0uCx6osZqY/ZzEFsJXWMzfk0DF82QGzZeYcUY9/mXrD
	dsjJDKAm/wFvBXDIkX2vxvCJTB16NC1OELvDwwj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654189619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tDQ5TLSyFzKketGUgWcj7nLk0ho7jw+RtknY3cNbWmk=;
	b=CZoxt7Ea5wR7m40oDTML5fQ+G8DvzP6tLcoIk5f6Wk8jHHZTWB5smLDUhx65PH/F
	cmfeX2iGMNxHIAhioFCsZ1aiKm6AvSs9vpa5B1Bk7p+TjEeTukxtCdhmbWAn83OB4vt
	0tDJU3JSGj9rG5qeieQwunZUfS1oFjrKk5QKmjWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018125627864-c30706ea-aa72-4b20-ab92-470146283447-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7631d50b04339bc46026a97f6d4c29ab299f7c55173f19daed40bc8b2663a867
Date: Thu, 2 Jun 2022 17:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654189619
