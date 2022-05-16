Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C24813
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 00:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652661659;
	h=To:Subject:From:Message-Id:Date;
	bh=1TW/uyUObekw/m3EBKFQK9BrXrWvLZaRGIIO4GUai+M=;
	b=QFaGXOHoOmnb+dT9MzgleoTkrkNgKO/41VJIWW9v/obya+gtSy8LzA1o0UcDRakq
	CCz/5j+v/TxJHnmb6bsemoufCIN2FS99771moQaHqdVC1ZN/6u0JZrNifwUmBnYgtR3
	aAdcmNwvKI1zaH5cPMtuzC0vXmMeEd3uagPNQWog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652661659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1TW/uyUObekw/m3EBKFQK9BrXrWvLZaRGIIO4GUai+M=;
	b=YZ1WxksiV2/MKO0mrozEVdUqDYoXmntEObjBmlXJ98P0PN5Hj9j01BuVRSyYKn9B
	XtNkbtA5gHc+DYEVMqSrn7C/S0T6AFgEQrqxMG1tuLGoTKjKkPqni8Z4++L07Iv11iu
	EwdXcgpFP9FRSgYp2NI0Bb+BdgPilfEsFlTPh6oM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca4fa698-2c5987f6-09ea-465c-8436-8a186d606ed7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76839f31c5989bceb093074f3b6a3d6be72e648a4cc5f6f74f20e9195a301f1a
Date: Mon, 16 May 2022 00:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652661659
