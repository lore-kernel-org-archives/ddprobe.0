Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1465D7A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 15:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655221859;
	h=To:Subject:From:Message-Id:Date;
	bh=QR46D0qzJUm/DNoP3mVm4qYF6XPm9B8LYtWcq0y7TXo=;
	b=OPTqnohPZ6P6QxfeIzK0INMpn9Nsabu+krjT8pflEXaTNaMpX4iJXpjTX+dacp3a
	h9lp1QmGsOI0iKdTD3p4U7EKtGmkeblGWb/ui84oZE9IQoWSShDByq0h46ZiJeM7OFA
	e7tVSb2E028J/dDbDJdbLk3LiYiq+LystvjmacRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655221859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QR46D0qzJUm/DNoP3mVm4qYF6XPm9B8LYtWcq0y7TXo=;
	b=lF20txw2/e3RRCTJeuqzm11gjJ3oW0djGEwsqWDa31QeqwSsEtHUIYXHm0VenxFK
	VG3Q/bMlpc9Lj5shKwLJ1+MR5E/n8/goPnjo1rde2gT7sa2v7Gux6NSQgEcX+OvhZBG
	dWfFHbirOlrR43dm8Rrk57fsnbS7hlLMjYD7yA70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162e933d6-85d2a434-7d1e-448b-89b3-00dcffdce28f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74763171192bd31803152d8deb3e6b70ddaaa01dd2008b563a2adbb1b387952f
Date: Tue, 14 Jun 2022 15:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655221859
