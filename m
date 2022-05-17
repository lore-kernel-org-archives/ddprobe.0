Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C561383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 14:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652796959;
	h=To:Subject:From:Message-Id:Date;
	bh=nMx96dMd5MOGgmuTXLMjHY27jtfnYPygWt5En5ZVk7w=;
	b=WKMQAK/ypgHbFk4tTJM7o7eQNXv6YH4aoW7flMJ2CKr/ZIH2Sdx4Ir1NA4rzxhfU
	us7Sgg4dmEa22tmP9ZPrzqa9PsRiJP9TN1A98z4U0ugIN7YZLRdOM8Y7HBWbzMYowWB
	+nkl3gcPvnUuYAlKb5hqWBvDLhwQWWeW+rqT3Hu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652796959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nMx96dMd5MOGgmuTXLMjHY27jtfnYPygWt5En5ZVk7w=;
	b=RaaNXmpY/u8fBucF1aai8n4Qu0NkkR3Fwm0nqg6+ILXUJT6kPjyY9gm1p73mhdk8
	G1GGRXRXgJmUplPf+8KY+xA+TaPFF6bHZv4hgxHwTz/QwLZGfXCUZ9Mrq8vB/mkHujj
	hofXxAKmh4xjxMrwl53ebdCdCYjQrU90hZyG2yr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2602a58-863f3c3a-77ca-4c0b-8f48-b583a0fd68b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0790ccbca8a3cc99f60f1dce42207aa88b2e4a2b3660e90ed0eec68515d4b44
Date: Tue, 17 May 2022 14:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652796959
