Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C133E10EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646584285;
	h=To:Subject:From:Message-Id:Date;
	bh=2xyBCGrqT2TqdxEhT/kOf344az/k9pqLOmudVHtmEq0=;
	b=b95y3SGdL0hSRqVb+zR28UfAPY2ok4hDFZPXD2KQ9SndwsNPHsHm9+o2E5elBONh
	yZ2Jqjqs0n82jKOJtr3q6EqFpApHSTItuGWANIPJAv7M2BIc6/uvuOJTstn5AqT0OyU
	rO67piV2CDwjE9ZkxgS4KqYnqhSMUJXXD2koP7bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646584285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2xyBCGrqT2TqdxEhT/kOf344az/k9pqLOmudVHtmEq0=;
	b=J2yUFuq71sWKyzCstgQeTUuloW2DyXZZHogz6DwQsVhxAvV+JDvkXklJsswbjRU9
	OkBwMhLNt4chCKoaERPdSSYReD0Do4isi5+2Ev0tOrnwkODkphLSodTIFUn2g1yeoqi
	sfsKX21/+qEVE3Z76702pgr2WhEp6mwSiX0JjEeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6012465b-c9a2329f-eaa7-4ae6-acc2-0eb8732553d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2055537b6427a9e249f174fd7436bc4a227779acfd0d424a7bdf05634854e6
Date: Sun, 6 Mar 2022 16:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646584284
