Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2E97C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 18:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654971179;
	h=To:Subject:From:Message-Id:Date;
	bh=mhAeA3P1HX617qg+O9anymAXLDnDNBHjRseIFmb0b9s=;
	b=M/s4UHG7wihJ3CCbbrOWfDf6twAUcY9ni+GiTf1qD25fBy05UxxWWSY+R+AevqzL
	Uru3Eoz/iPJLQb5Nhr68FJsJlEc8ycYlCOW1FbbUVgxu9WVe/2qDxwul1YklGTRduz1
	aa7CorefZOaQAezrx81pTnGlue4tblhZt9qhNjJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654971179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mhAeA3P1HX617qg+O9anymAXLDnDNBHjRseIFmb0b9s=;
	b=YRhTJKukyGRpNvp/t8hsMe3GXFNHBpGaJg9qo02TDcOffVwORrpK6oSGfCoGg+/6
	8xxBQ7Ol6dwmN87syvsGS7wTE+sLwZpwtIPjCNhpp67Tof/oLb5Z4kIcSJ9S3X0UwYz
	R1FQKuTdkpnFlEdDtgYaQdg25Ewky+or3g9qxtGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153f820cf-8e757f20-c5d1-4746-ad9f-40d4ddbebb6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 978e4067cf55c50ecd76c11696326e31c516b0dc2aac2f54695284924c90a4c5
Date: Sat, 11 Jun 2022 18:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654971179
