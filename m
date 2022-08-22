Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601FE7EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661159452;
	h=To:Subject:From:Message-Id:Date;
	bh=kvzqdj7qFOJ5jY3ju197N/JRUisUAAe5pNSrDP96mPE=;
	b=eD3HdmSlVBO+GOirT45lxg2vCBBYeU70wMeVUwEmrOiaRiNinLuE9Co34XFTmnuc
	MwM6PqZfPm2yxmo95LwAxWLKtZv1wKuFtfwi0ZGcjnSmkpz2vmBqNpy2baolAJiX3Ru
	lRWB5yex6t7YNuJFFEZC0eSJFZshB/ajW+ECngWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661159452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kvzqdj7qFOJ5jY3ju197N/JRUisUAAe5pNSrDP96mPE=;
	b=ZXP6g5dSULew073LHWJGTQY0mwD3oGqcPgNDeEC22VEvrdS6rhYQpBB/jH0Ly2rL
	SX6c5UNX3ActWhhHyIFmT72G2flULshwFjw4qdBqss8WtgpFmTYheWJcaCh7tThQ+v7
	7ZjjY+cqymuhOOV1Gd6jvzZoQynOoxZYcXje23jo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4d1afea-acd9a6f4-3743-424f-afb1-3433929da830-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2f52c4db42177fcc65a7bc0c7a6bec2dcd63a6f2ff082836576c1875ea709a3
Date: Mon, 22 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661159452
