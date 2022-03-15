Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654977A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647375084;
	h=To:Subject:From:Message-Id:Date;
	bh=U+S6P8iEJOQvTpfs48BfmNf9veCWO87HFBGcaRSfwQ4=;
	b=EG/PwLHNZhvrBaMIpbwJJRqL9uPYOuKwCDpuGDcF3O7rdQBBrCT4br6iQnXqNPO4
	PWjAeeUZ0QpaDYPGwVAk7elr9WxbHaJy8KClCNMAPE2UER2yLmn6uMt8yjdNGQ6tkVu
	OtiHOzhv7nbrtrb9td2uXtgmjs/25JRLuvHDtGy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647375084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U+S6P8iEJOQvTpfs48BfmNf9veCWO87HFBGcaRSfwQ4=;
	b=QRa+me4XSf4lMw3R90IRvi0RVVqJNeMqm+sP6YXnaZboUKq2ageUzF9GaRT2vnCH
	qo0kZ86WAzCfL5sT4vfHdy47FZ4rs7+ES/wYAqIB5xbn4uOURB9XuO2it2CcFe/8+sb
	NwqiXAKfwjJKhUj2VgG+jCxWs8aU3EvPQpJMX+so=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f34ecf8-7b51c944-324e-44c9-9d04-eb56ed40eafe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d644205c12b20814d12264ea11a8efe30ca261fd3a39f0213a17e8af0efa3a8f
Date: Tue, 15 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647375084
