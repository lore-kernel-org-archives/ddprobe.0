Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2465C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659294052;
	h=To:Subject:From:Message-Id:Date;
	bh=gUvQwGmN9mG56b1ZzvpDexEo/fOFx2SfxiOQl4FExzs=;
	b=f7PN0IVnoGTmHUGj+M3Xpei4ywoZC9PXxj+ke14YTNq89R/Hf9eACTcRtkl4KIph
	nVU9uVM9mJ7MJz13RVk30dLMq1cyyHWTsXaYb0D2p8wc91Y1AwN4oy9zI0O/GIWMagw
	JOM1T0nJVQsdu+e5OjKUEUqMrmz4xAQDzgZRcWiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659294052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gUvQwGmN9mG56b1ZzvpDexEo/fOFx2SfxiOQl4FExzs=;
	b=K3QhemrsUDjEUZVM3QTAW2+TFjakByIjCsEBRhxzZafJvei0vgvokv5Bp5tFQxxo
	d0y+NIpXRmhm60SDUD9eaNlSXPO9sKS7zIRM2uovjZXDhPAvXNU3/RRxn90nrkiExIa
	vbr9LN5+C/V6YS3umG58tATWWE7Bov+9NdhaICCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255a1f0a4-c8d2c75b-b1d6-434f-8790-432c481a0e3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7bd9fadf0a4c20d98b56f9f4e82535143f6206d9eaa8e815bb5cb332307b4e5
Date: Sun, 31 Jul 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659294052
