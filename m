Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBC6320E
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658160412;
	h=To:Subject:From:Message-Id:Date;
	bh=otWjzt43mV8HSYbxx80NnwkPsG9bR4wdMqjlMDv0T8w=;
	b=BtlUaarAuXHO0TnsxAkN2NvXc1n9YT4cU31bDMYLSfZ56rgxtZksgzhbTmXHJyv4
	UG5KOjaOhZXIDZH925WbsbeRITwf+Fw+vPTjQ6h3lOPUxI16PUsTW5cIx82slk5amAy
	1O1/jS1qw44Ors+riBm1RkCm7gkoesVbEgF+sjN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658160412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=otWjzt43mV8HSYbxx80NnwkPsG9bR4wdMqjlMDv0T8w=;
	b=XBe/i/xunXJIX0gbmkD0V/fpyCftrRh64PI4bP6U6mytE0xqr5urfzNSHUFp7P7O
	EGnVN/vWCo8Lvz9QFBbkrdILlcvNzmAAb2Xah1adIz0bZ7j6LNN4JzBkYAEymo1CkKQ
	kU8S5UUZxcwaxHqqCw7giezsT1lsrscMXc7ABnRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182120ff69d-8f1b0bdd-7609-4e16-9a60-b221d4513697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab87933dd793c3578783fc23e7ae6d3013b7b9fda14c2dc28dd228c5fadcd385
Date: Mon, 18 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658160412
