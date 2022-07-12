Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8C9443D
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657643212;
	h=To:Subject:From:Message-Id:Date;
	bh=RQxRXlevfrcCaDSNFdWvTG+BwedRfGJEqQvhaZ9SvFY=;
	b=QamspJp3cpmCXCcrZncSR0T37KHStwphj7D5LFJ3JhhUPxj9Ys7fOmpk0z7q3iWQ
	I+FGVYUrkTyoG5W6qRexPGbZak6qWQMRtR5bq2q9cVSHvoWEPCmHltUR3LJdoXMqQY6
	kDlaVfM0a+wVBScFZqgtT4K3FvMZQeSDjiqO+ZSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657643212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RQxRXlevfrcCaDSNFdWvTG+BwedRfGJEqQvhaZ9SvFY=;
	b=N98j8gRbTV6cpsFUqZzEZDm9remwl+qvUBFQx7dGTarIlfKiOmXfeLO57oVwUx9y
	RVlGBU5/+BPWfEU8+KrAr4HyLzIYykeQjoqhNgyQNAtRWsViRkBlUIYHwA6Xcz86Tjl
	mhpv9Cb3wcHuWYjJfj5ozYMU6qrIu/XyHyeq2+fs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f33c1e10-db01d9d3-a19c-4cca-b453-c1bab1b482bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52cc782281b3db87fb9c0706319f672b6e755242d150da5f27b1243de8697a91
Date: Tue, 12 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657643212
