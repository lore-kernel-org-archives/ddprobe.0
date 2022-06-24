Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118DC23A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656050212;
	h=To:Subject:From:Message-Id:Date;
	bh=tZnYOHUB/OJXr4kWcL4mpajo2PF1AMLb+/gQccZfjCA=;
	b=XvD1EDFRathPjJpbaC+qdNakcJKqfOd3V1uTlX1fGoOUGA/tWeg/ZxstKhQrGCoq
	RUZSbC/7XD02gMQLB2CkaKhB/nSMhSOuOjlWXZa06nnotk704gdvLaqOEAzFDDqqdFm
	EEIkIrBR90m1AQaBY2g3BBYJBQ1LEyb9gWWo1cSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656050212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZnYOHUB/OJXr4kWcL4mpajo2PF1AMLb+/gQccZfjCA=;
	b=G26pFCELzvtndo2vgwDIPl9ZLH+1HenEkZRHQ3q9nb9Vvoz0ToJuWrt2PomGHlll
	IF4l4Mbk30T2aKJc73FRESb+yF/UK8xbMeVa1CMvi6GoMYb4f/oy1LGbr/eW3j7Gz39
	qOmeuvQhmX27JJ6y/Fa8pxgMjiCSKXrpXFSewaV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819448ddf1-69d77e75-882a-4aa1-adc0-bbd20fb288aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 837d557926ca8c0620f71c56260d246ee4c98fdc3625768a1b9b9c232cf17fc4
Date: Fri, 24 Jun 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656050212
