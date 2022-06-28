Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0FF33D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656425212;
	h=To:Subject:From:Message-Id:Date;
	bh=3wITZB/zKmD2RYPtMfBTInoPyEG3wDzGqdAeMI4r8I8=;
	b=fmlblp7019jaxQ4y2UDRA/VWDD1lHgN4P8BYE3Afzw3NMWur0hFM6IHP6W7sUc9b
	oWjbFmMdurW483CqvWisJsSKKz4RF+IY65tOpSCQJpUhtFi+67NFa/t/XlYZqsfmXDE
	0RRbtyIPriwVFUDFOGgLC7ZXzyrc7F42TRGf5Py0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656425212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3wITZB/zKmD2RYPtMfBTInoPyEG3wDzGqdAeMI4r8I8=;
	b=i2JuCX/Za3bosU4DTDUzfROEE3WAirFzrQJuYwfk6NCcYOzZx6SGDbjgGnZ7NnDN
	TNf2A73rOA6mNuS6IU4nG3CtTV1SAKXKzJNbuVPK4U+HTuZUWRPJuzbkwCwCRAMvoIj
	W+n337zoHz00mhOTq/RJ1RVFVamCBXx8Wp7EVN60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aaa2e97b-1d00bf4b-4433-4aca-9725-ca89eea487df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f0e9cdb5bd37360462e2f91e09a9f5eeda2f12b1477a96da5faf1165f8b0e75
Date: Tue, 28 Jun 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656425212
