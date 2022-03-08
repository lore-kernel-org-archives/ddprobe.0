Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAE74C88
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646775985;
	h=To:Subject:From:Message-Id:Date;
	bh=WRQY1FXN792lNbfm1WnLOG56sEQmWdu0rI43OyyVHwc=;
	b=fhnZREW4/7pdFOJpneII4+RsiO4T1mRvu5CcHmMajmLBS/P8Tl6pABmcRT9CKG9T
	EfijmnyGFwt+i5shYz8/4V/HsiaJPRgD+dkiEaN3kp7QfMvxGO85luYlCxnQWEPkdVr
	yGqIm3d4Ah1QGH0Bw4OQ/Sk5protyRUrxAv0g6do=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646775985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WRQY1FXN792lNbfm1WnLOG56sEQmWdu0rI43OyyVHwc=;
	b=gjO1Og8sJ3pnJfffORzMzuHbgemQhN8l9vojdy5Eyu6R+Nb8w5qK/UB58qdcJGlO
	EdA11oVM4LCktICHwsywZdgRnosfAOBDx0BPphO7hX+3LgVL6eTOH+kRuyy/oh8iMW+
	/HhvUFe8L9KL++Zs+diIUyI+VfeGVLmpGV7TgiHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b7f6293-d4648b5d-8dc5-4657-a670-5fcfd28f78ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6347c98e4f7162a8f97e4b26c459d7d865470504f3cdd21dbe060c82ec207481
Date: Tue, 8 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646775984
