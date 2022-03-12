Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC747A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647127284;
	h=To:Subject:From:Message-Id:Date;
	bh=3O36gxaQ3QMaSFccKQE7oeAovG/+Zk+XW1sjSZRsYT4=;
	b=jHGDULcDw3AQOp1JM94WU0Z2qTQfZxVwZlxNwh10NnxHPP8dVOmRT5SDgyNEyj/S
	Nq3TdeiF6XL6pqeVSaZaUSrgYF+PFxlNT4W243xlb8vzp84kw+0a30QayE1FV/yt+Qo
	R5kMfxfeCIO8uCJKCTQ+OGl3iO3HVpM3XBkfSMD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647127284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3O36gxaQ3QMaSFccKQE7oeAovG/+Zk+XW1sjSZRsYT4=;
	b=PkvzJDPBqTVicPzcsrzDxbb7hx3eYgJz/0mQLo1AIDErt8gxCuwJHka06Df0tMcj
	gsTsD3wqIp9gZcql/1xo83GUcJ8nhtLUv8Uctm/m3RhqDCOfaV/8y05HfK/0HDLR/kf
	sj4tlf7bHP+uKjyV6g4fjrNHB92x9Rihu8ioUIGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f806fcc0d-510d5937-f9e6-4ef6-93ea-cf2a6b9b58ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0431517dd3cc92795bc41465e81275ba35f367b292a8b9ffc13e3f166c2b3b87
Date: Sat, 12 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647127284
