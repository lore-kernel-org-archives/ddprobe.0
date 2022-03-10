Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88EEB7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646890285;
	h=To:Subject:From:Message-Id:Date;
	bh=XoKzyQAGxI7EnKmeD/5yIG3nE7M/HS7WgqGPFa9kOjI=;
	b=dCR2xUypyqFskGzuAl72Ej6wZOf6dSb5c88Rnk2popo5UmiwwglnMrt5y9Q3zy5G
	qra/ZgE8cXxqXI4BPbyiFCaylgQ9bJF9F6rGrcDLDvS6THLVc4VtLwUhSfRFZK2sUjo
	Pse+Q9nuQqoC9BOidtnkaAKFRfzTSL5U+Ol/sBK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646890285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XoKzyQAGxI7EnKmeD/5yIG3nE7M/HS7WgqGPFa9kOjI=;
	b=caPe7krifxENuHGQV4x5OZRqf/9IsZ0XBKJg8TI8Qyl7iNst6FuBVu8gE3D0uYO8
	9RUKBxvcNZVxVm93X0nO1fWYylJucT2nv4a3x7VrJ6GBlX5GpGALs0+kLSVfSyVEn4x
	wi/OiBPteF4tFIVpAJmtCnDN55fJDlX/7lr0Eyoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f724f76e1-fe8bd308-7252-4cc4-97bf-a5de754a1d41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ab6ab95aca546be947539729cf85bf5b692c5e4abeeb8d23d5a3903da394598
Date: Thu, 10 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646890284
