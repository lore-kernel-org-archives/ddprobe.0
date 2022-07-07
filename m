Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1C4368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657160812;
	h=To:Subject:From:Message-Id:Date;
	bh=ysfz3tSZFzz69odIGSRM3045iUVWmpDo4ibcr9WPoxo=;
	b=eUCnqQ8+3WYvQpbFK1o+YV0lSsrrNQu0DJPZUuA6V6F2UKcts+lZdvbQTBcWWmXW
	ZF4lip+LwNGT3CisppLeNed0eslK3UWo73Mh/p7UCVv6LErkHRxHzGa7o8np/nqAJQ/
	ykp7jfttklPbu3SkLKwCpG7wy1c9Pc+35q8HAfdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657160812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ysfz3tSZFzz69odIGSRM3045iUVWmpDo4ibcr9WPoxo=;
	b=XmpqBmSWSgE85p6PIm2Y2E+vC2uhwlX0tTCSrgXw5jWwBgyfGMPZ334mdXgV1QSZ
	4YJPgPWnTxEsz1hg5DtJI9DM7ggsR/dIN7PxubU26AoyDyz/2z8Hj2g5V3mTEk3NTE3
	VQEBxi3BMmOli/s9gdSF8Cv0ppssu+n8vGVX6DeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d67b46fd-35bfce71-9a9a-4032-8c3b-db1485768b0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fef5bfcdc367906ef36061da77cffc0dc6551c78fbc82148c6d3b03f60123467
Date: Thu, 7 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657160812
