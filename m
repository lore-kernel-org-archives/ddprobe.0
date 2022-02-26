Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B52367F
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645842985;
	h=To:Subject:From:Message-Id:Date;
	bh=qz8eKlS0eH7Wgeo2A5zG/4VBTSd1u+UK0md6nYvNrzA=;
	b=F3TbRlztBCp3MKPEDAfcnYWyx75HzgcpRuLFBmYi0l1/GIhh0vheYInQRzD04XxR
	11bWn5MexFzL2SoFwoJaKa0xadmUsUntXG7yyCQI2M4AEXKhqxK33bWhr2Kt7uv+JVu
	aF/ProsSOlIvm6p8ov7jjDUx7Ft+nx09C29NWPT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645842985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qz8eKlS0eH7Wgeo2A5zG/4VBTSd1u+UK0md6nYvNrzA=;
	b=PI+/M40uBnfQpKYysX9z4rMu+BVMlrbw6en7YgfCdzQE6s6IcdTaqJpMJXPg7YIz
	GsyQyxS8e8fqLHpi4zEZ5l4leuk1HngnheZJs86nxgkoHH4ywwNTkoGEivPyU239rmf
	6FJD3Oj+HOVXAP1ccvsEN6oFu8d9l/VN+hJZTAWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33e2efae-2d3858fb-0144-425c-97a3-3896dc80d960-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1d63a4e36fea48d72c67f53f24be5c3298a5a211e06e57e2349b0b2e8b1a20d
Date: Sat, 26 Feb 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645842984
