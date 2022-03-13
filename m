Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BEB361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647207084;
	h=To:Subject:From:Message-Id:Date;
	bh=K5nniowcKFZDusmNwNxrJUCesFBvbqOg6emi9IK6FMQ=;
	b=dJgj07HOE3l1XOylb6Inmga8nOot9+VmNnAAZfSgYsIpwjC9JDPYKRFBGHodEI13
	cJP8pC4cxVLKQr/ypkWxhS20txJGdu7BKYXT+7eSIQ7nly4B2dfkHmt5EQfUfuqIrGs
	EqbGOz6zvxVhwqHnDD+p6sS0u9cTZrpPg201Pzy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647207084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K5nniowcKFZDusmNwNxrJUCesFBvbqOg6emi9IK6FMQ=;
	b=OUg/DQAXEXdfE54HaeBEIfygs0gdO6aK11fIw/z1vvKuRWeltz2Ejgcvkpyd9cSy
	22l1pzBrzlNXref97AwNPUI9lwy9mqVA1bpKnqwRK5mglZmhTmjz00YQfO/Zw/JumzT
	K3Ujyaf08RFHJskE/bUquPuJVqNsKsTAkPnQERWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f853172d8-a0a7ee72-6af9-46b4-bfe2-249332cf58b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 236e7523ae3007e7ce8a8083eadd2cbaf4ab9ab9971e9d2f9d28a50aaecf6f7a
Date: Sun, 13 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647207084
