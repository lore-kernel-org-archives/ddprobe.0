Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B647A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656476212;
	h=To:Subject:From:Message-Id:Date;
	bh=BiaFXlYhNaizjK1f5TPuoj4IS6oQRzkAVwKqtv816T8=;
	b=CeV3Ex01CJMh68nRiXalGwFMwnTUqFm/UR+tSkGAGPeGdJ1FwSV7TBmlWsG4K3ec
	DsV5lZCp67ACERgjATPmAGO5cVypSi3OL3vghrFqiWPkoo59Lk9DZ2wk8GT93CZKgLs
	Z3q07n6zKAOtv3OMU4hPontLIQ/Ay403pe1oSEzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656476212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BiaFXlYhNaizjK1f5TPuoj4IS6oQRzkAVwKqtv816T8=;
	b=Ne1poMn4APKc0yvaaUSz+ruRBWVmsdFVWA5BBxi1hPN4P+6irgoMidsZFsw3TCA/
	NQMtWT90fhbBlNlbLao/aTHmle82KK6a3rsLBeRfmQpMVbmIci/dWEqJp936JuSUto+
	Tq5nWjjak62sNlRlyq1sPCuiE8RFGiW7k5yN8hUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181adad1c31-076321e5-ba1f-4004-8ff4-c0385432cf1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62adc9fe072f6645203e8b57115226cf99c0570190c03e7574c18f8c7083fb29
Date: Wed, 29 Jun 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656476212
