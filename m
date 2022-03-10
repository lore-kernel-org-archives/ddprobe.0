Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E401C7E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646955985;
	h=To:Subject:From:Message-Id:Date;
	bh=D92rCoZLaKAqgvngISPE/REOUA9wMwtzRMhKmKE5bQE=;
	b=SgFp72utQCRco79ys8yyHf4PdTScySsZsIsdwNou4DPaMVB5ks9RUu4Kxb8TBwXs
	L2gLk/mKgrSl00dJcE9hnPaF607v4Ade2lhjQtRhp4PnPYjp7mm7/V9isrQlLQ5GgX1
	VEnk/2NE2sK/IagOexARiwNuffMOB+ChzASVNydE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646955985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D92rCoZLaKAqgvngISPE/REOUA9wMwtzRMhKmKE5bQE=;
	b=NwvjnIx+SNRu6xcZmmrxDuWkAK+4x4ALUREJZ1SBozV4NXa3PrO70fuyRgwhT+UI
	StTl9ow+51v1hXgJdtQyJlELqUW2LYSilDX5g1Iw6iqQVTzfjxYvolF/i7XnPBBzrtP
	bhf3xgEZHd4I4lmCL9EfifjQzdx6noFeLiPi/+G8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7639f7b4-2432085b-41f9-4be2-b2b0-3fb0b7dba0fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00ecce975efa4b9ad4399c9caf6bb4eb7ba04eb398e71d648f2418929eb3087e
Date: Thu, 10 Mar 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646955984
