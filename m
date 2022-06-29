Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206E57B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656522412;
	h=To:Subject:From:Message-Id:Date;
	bh=vRQuckFjwaxVxay6FIhRvHAgthAp+Z+Qtds6hTHSC/8=;
	b=QNfbF6TtDdaPf3n7hVvQdU4h40b+DfRFPjw9teWer/OQ+Nkezy+TofD75JtboX7u
	o5rFhySoozxgPcBNxp9FUJIFLm7z4bwgdBwnTL/D/1ZAqIo5nNDCNZ9LFwkpIgf7f7c
	UUEdb7Wz03nuKCPBnmfAwviUhABai8FaxMLONcpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656522412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vRQuckFjwaxVxay6FIhRvHAgthAp+Z+Qtds6hTHSC/8=;
	b=PI70vMFE5vkLZUY74au4YONac5Sb8ghGrkPblVED/B0o6J11EQ/KnjnVtS4lpMhg
	OxLll7Z9wavGRxG5TADbyPWd30qDK/pmbWbiD/7ePVk0EP9KoWxBiqcSveVubxYodmy
	xfaZg/vNSMKkSdBFHKk0ishRyvD3NFEK0Co0tYxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b06e10e2-af84a75e-0903-4325-b7b8-11791ee1b098-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0f9ef26b4c7f1f4b5df086b4622fae9bf3176ddd40ee7bb44a5f86e4b7a2235
Date: Wed, 29 Jun 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656522412
