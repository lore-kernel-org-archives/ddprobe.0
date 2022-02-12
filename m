Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E341229B4
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 23:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644707422;
	h=To:Subject:From:Message-Id:Date;
	bh=ED9lnCkhnqxq+QkwfTKAm4tITMYr42Dwu+gPPbNnfuo=;
	b=ZDUesVVOpEUXu+mVzDpirwuEr7cmymT3XGmpn65JPs8sL7t9zsYOhRw6erpak9AU
	Pht2CnCtUkw3ICDaHpxSDsyH71CeFX3RPNa0Y3lgYYh35DQvf5yF4h/D8jpUgzwAC/I
	eNePCJo5TDpdfKIuKMdJqs+57t5lkSzNYnDoXDKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644707422;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ED9lnCkhnqxq+QkwfTKAm4tITMYr42Dwu+gPPbNnfuo=;
	b=adBbwNYZ1mI5BQ+UYttVY/X4Y58yW3C1mfwzDIEHVD9JM5yQFyxxCPeqKki/wizF
	oEhRs/R378gEn61ApR569kJr0AFuylceKe/iYJuQ+2NaIeIipV6cy0G+NyGod5KubIT
	ex7JnOxqWHF6NQK8Xv41a5pVsN4xBY5H06B4L7uU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef033a1d2-7f77c469-5330-4973-a637-1a14f8c1b64f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef7c81d0491c1dec0c880034eb3cf1322a5bc1b58dbbc72453054351451a51a1
Date: Sat, 12 Feb 2022 23:10:22 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644707422
