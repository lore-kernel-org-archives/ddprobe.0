Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DE010F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647304584;
	h=To:Subject:From:Message-Id:Date;
	bh=IZbF0jmvo+inoiCuHM6EhpIBD6UQ1VwPA3vHuTF+gKg=;
	b=bZ5+pr+Rx2q30BcCjU0dU0NSv/xUmEIaEd0QAg5ExqM+AqruJRGy0vBY6zxD/AxI
	B7M5Yy+U+qVEpBT3/43uC72bVq/rDirukd+QM29kd5T5YjaABLoL47MSFX+pnYcSMiy
	DkcRJ4Jd51XrJg/A3M9xY8hcgQb77RbCwwVqyWLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647304584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IZbF0jmvo+inoiCuHM6EhpIBD6UQ1VwPA3vHuTF+gKg=;
	b=IitXRLqXOTRJ+HGruAsdGTw0wOljoFvgLQpIMwi2N521zgcGph4g1Kf8xnO+XO34
	davWuuOtw2J2LX1dan3RAbi1WMkuwV1IQmxk+Yv0gqxcB0d6Qb4NoqniiBHensZlzYd
	e3y+EfhePtke0pvCRU3xiF4B4inj5Lmxcer+63gM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b012e8b-2b0efd50-e09b-4169-83bf-f4b5599266a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb8baceabb4031f5607403b7a098846ec6575234ac1ab8620112c396df75f967
Date: Tue, 15 Mar 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647304584
