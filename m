Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4B115A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656118012;
	h=To:Subject:From:Message-Id:Date;
	bh=kxEPMTMX4w0RGA+3vfmxm3r/CtKLv9iNE1URnMEIyKI=;
	b=KS0W079SY0f4JnoI8l/UEINYD0DuuzJVwkugsR0lbB1HRP7f5UdrUF2ghM2u/o8m
	tIoxTDYDY2hwGsnwIZmOTKV+YR3X7hr7O2vwdcZXlkxsnInIeVMicCUT7ua/w5XgptX
	1cBKqag8xRCMxRW3fyj+Gnn1Kwrk8gIqH3TtgYUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656118012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kxEPMTMX4w0RGA+3vfmxm3r/CtKLv9iNE1URnMEIyKI=;
	b=ImkyvfRWVJk6cwOegPqNL18a2ulyYMeR3ZjfCs5hsmqoXIWaECrqpP+cvEPsdq5L
	ZDyLba9dju4FAE1mLZq1wukguLtlIrD3r9BiaOWlyNozNlINjtvl1pT15Z60Mn1jsXs
	NdJMMBmAU+bnXEbN7M4R3iSb2+6nusq8052hWYuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181985369ac-3a497ec6-b021-4f00-ae39-2535842bbb25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 415fef62f4d9be868acd3634bc3f350da3a7168fb9506fcdbf6b372708d737e9
Date: Sat, 25 Jun 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656118012
