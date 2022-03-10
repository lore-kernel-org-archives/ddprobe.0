Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A13A7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646919684;
	h=To:Subject:From:Message-Id:Date;
	bh=4VSJcDD+AVltleNnr/MirhR9bG7VHIaoUPmCVQ60DBw=;
	b=Aob6Eo7ckNPONdRu+q+pK/WpTwLrjvrQ2umHNxoCWj4FiPe2ivmF8jUgwRasCAPb
	JFPLPo5fqSz62HCjYs/Ydwi5MmGW3UOD10jnOpf/gGE6BjRmtJBBB0/9pingrZuphzo
	2z/jv+gR4r9EU/jrTdVeOuZG3RB/n74332z9cBIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646919684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4VSJcDD+AVltleNnr/MirhR9bG7VHIaoUPmCVQ60DBw=;
	b=jZxOWqtlEkooMeYKqdXeAOX6mn7SG/joz/Azi0yIkXm1kL4HeijR+BB6G4VGk9Ss
	aCjWNhAs0Az2fwmwtT9i1XzbAKCOCVzyOU6rUBq+vd7c/3BjH7i7l6QZ2nOBBufGEYO
	38JucNpAQMOVxHyueGN7dF3Y/JGoVbQyKxYAf0Ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f741012a3-c09589ee-e6ed-49bf-8038-96012fece82a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64233dfec70b39b0adbc0cafc54cc337aa8433e05a4057aa941e8298e67bf3de
Date: Thu, 10 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646919684
