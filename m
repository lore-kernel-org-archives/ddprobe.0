Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29EB7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657135012;
	h=To:Subject:From:Message-Id:Date;
	bh=LHBkY3lQ5veUvZfNKUk/tF4gbHGvKdwL04fE6hDenIw=;
	b=AeUC4+FE/2FzCRzkTxYnB0udiEKDyPkg7MlphLLNsWVXMNBVf2YmN7zFgNwYV7FD
	OPoeIJ8JNX3Bq9y2a5Sx7+NImbZeat91J9EdEscRvL9c5m/DJAA6bhRc+eAKc5GnvF1
	jesbs0Qni4vkkTvSZ0lo/PgjPZGMiHEqv0xs/6II=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657135012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LHBkY3lQ5veUvZfNKUk/tF4gbHGvKdwL04fE6hDenIw=;
	b=j3em9/nY/+y5GpOSHNg/ktNmnMxsuotf3Avy5MgsEkrQBv+02qIoApSB+6i4h0qP
	FtNhjjZDRQ0DRjivE3htc+NoY4CJyAuV0lQG/h53yTE265y1PfTvb305aJUsXhAPWYf
	AOzkrCp9bv97cxEJEGRS6KrxZJJ0Vz78Lmi/PsEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4f1999f-7fdea934-81c1-41e2-ba7c-392bdc5f3943-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37a79ef00dd438fb7015c8a6d8abbe09e0e176555f8268256bcfdce5c5b381bd
Date: Wed, 6 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657135012
