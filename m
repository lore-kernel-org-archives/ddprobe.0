Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1474A2C
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658509612;
	h=To:Subject:From:Message-Id:Date;
	bh=XD5M/hb26mQ777fVWXgQF8otIoKVgUd9vayz4gsW2V8=;
	b=CKpK7y9oHRjUMXpgXTU6hCNSKy8KzfmMVkUIVvPydmyAFR63NMV/rsdHImRKnazv
	ALHoqgK2VaxNDDkHJ5/+sAV6SvL8hFc0Mz2994vKbIgamuJyN5Y94Ve6vXbWpz5u4GV
	O62K9dA6txNwTxdYj0HyPCf8mcqbTSDHQowUH2oY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658509612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XD5M/hb26mQ777fVWXgQF8otIoKVgUd9vayz4gsW2V8=;
	b=PjImOJ8Bz8yS+7rfrVlQeLe4hHfX8JZXMCpRsufwGioBOFjecuX2D08HH12i8qZn
	Xe6QLgTR/fQNSRFXkzNCHu2XFYGFWhgmsKJF9ZWvqN4PbJ+xOVoxTAb8m8L7yXmKYLh
	fWxjALUPjZAg6PdHc5yoT6yrcCUsdofId+MjXTaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226e05516-1beb46cf-8454-4a02-8cca-a82f9a2ec874-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d061a8dbcb954814f2a1ddd3f8b3674415b23055e897defae36a8f0005c5a874
Date: Fri, 22 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658509612
