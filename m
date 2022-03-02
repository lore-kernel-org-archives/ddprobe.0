Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27402104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646248285;
	h=To:Subject:From:Message-Id:Date;
	bh=KA9G5yJxT86hsMn+M9XO5lakSZcgZ0s6LAkiW9blq1M=;
	b=afVpAPGojUQHVPEVxFhr+mAzDRJTuikmhqrmz2JyrHKvx67jwZh5fi+Hvja8JTY8
	hGIKHRRAQZd3k8cDBUJe9Sw3b//geSJj31Bzopp++D4y6wuoSHdxyeNwCtOd14rZ1//
	1aqE+z8e35Ek8wFfwMWEk5SE9lnQWWohJsDq8hYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646248285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KA9G5yJxT86hsMn+M9XO5lakSZcgZ0s6LAkiW9blq1M=;
	b=DQdf3/d1gGeXyjKee01JZSaq6gjqQGmxb0R6Hk0E0QkbVVICQF+6HeAXDcL6C4RE
	aWdsaIn716HCt7Zkvg9LL9kr7PhlNGMgQzGo0D3gmmfzi09swFAanJ2G1mihwE+d7S4
	/9JtO17gyfYB3LyAayRWcMwvI2nNWfO0vE54oasw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c0b52ed-772a1a8c-2322-4e81-841e-bfdfb49b1a5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b55943818cae2f015f8082df232cef1314ccf64df8e4e53c74b9a7bac34fcbc7
Date: Wed, 2 Mar 2022 19:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646248284
