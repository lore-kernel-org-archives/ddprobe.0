Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6776F7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645454784;
	h=To:Subject:From:Message-Id:Date;
	bh=mD0EwKViDPLZq6VZ6gQYTKYq11JBFfKAmeITdkOKto0=;
	b=IvCdtFlJxL6A3ljDH7YHLxiDtq0SjUKG8A/7xHVQ9zEZE3br33wYTfjDfs+HlsGr
	dCtQbiRGF+EAihfTv3ZuVjetZu67+BwiGNAJEIYwenmOCu0Bm88yVBRyqq0WJTY+LAg
	8sta3TSEXSSPSPFMbvFuUEgvwGdttRVVvFIto+sU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645454784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mD0EwKViDPLZq6VZ6gQYTKYq11JBFfKAmeITdkOKto0=;
	b=IHlLouNjPNROuPTErl0AbgcBNTXiwC78wp7rF7iycoXC1Nf73O1ajHbPs5RZ9irV
	wbAU1yDzPBeyeiPumW3dNcT4kc4gCdnpG0/VG0YyBTtoGwy5PL5Vtnyie9rwrZ/r+Qb
	6sXu7oUWq2jySxJac9uNynckW+fQNx/YvEJxRV/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cbf78cd-3aa8cb16-5941-4b90-bd2e-f189fc52565c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42cc91dabaaa2c66a139161d5d00450c4e33bc8c3f1e7e58f558eba3835f0337
Date: Mon, 21 Feb 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645454784
