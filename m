Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7AF23CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 11:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654516679;
	h=To:Subject:From:Message-Id:Date;
	bh=c23koLCwbCbsnKtzCTamgeZfg5bjvqFIVq5leEFWVeM=;
	b=CMogd6/42OzlFhDLvGtbtyOmk9q3JfJz9eNsP7C+Cqf/yhLvWktQo0E2M4Rw7cXX
	tUqkLkgd4U5GkQ7lkFhE6PYj/dPcp40OQMEZfcmI/BFbzjkOVbG4f+HZlhf6mJeK189
	p2OlsvBjJ6jlQhmTICe8EKlL/Wk3/Blgf44E1Y3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654516679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c23koLCwbCbsnKtzCTamgeZfg5bjvqFIVq5leEFWVeM=;
	b=VNtGKNJ+nI2MuCS12FBDhOT1lkLa+ZacjQvRHBpjsy50R19iiDFWHVU7cYINF/6h
	8tNTS2mJ8jyKgV+wDSF2qS/1Or9HxLW+cG0/1Pkx2o0TP87lZxwh2+RVjFh5wecJxG4
	3kBmLsKbADbG5y2IPagwSiCcpG6AEGMnzpbGpHsw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018138e10251-dc8695dd-c588-41df-b761-00a2a33a9ad0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0f4cd0bbda0b206478d482ba2e59fc06af3964dc5d03799cf5c657321bbf6bb
Date: Mon, 6 Jun 2022 11:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654516679
