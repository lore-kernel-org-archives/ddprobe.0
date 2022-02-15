Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE20A1388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644927385;
	h=To:Subject:From:Message-Id:Date;
	bh=7rvdekymi0gyUtFw7MZiAd8GOz2/tilNbDUD4378mSE=;
	b=e3Rjwqd78Eujsg8ZtUd14C3xHVGj/AseyndIXRxn1cwTW6Lg0+56wediabYk8Xgi
	QIWq6Cr9jSGTclSEIi+yrncUKnJ35p6nFP+1KIqlm4ONNdjunhEMtWZmTe1BJns7vO+
	7Ced/evygBQ03NrzH5tWHb+sgUokzcJY93i5udfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644927385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7rvdekymi0gyUtFw7MZiAd8GOz2/tilNbDUD4378mSE=;
	b=j0PXShCoCFsDgOgmMoaQ6WUPBrwLIhEFPQyeVQCtkQ8D7a6c1sdb/rs2Rc3xMsvH
	2Ki4drENKF2nqLzVtghXCCCNqi8CDEcLpCTRwDsrtBAYUgI1PXz2r/9n8WugOZLd5ac
	kTqN8cRL0otI7P1NiBDuBy4PSLfxwptBqRIRVaTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd4ffcaf-889903eb-c235-4db9-9d6e-5b34cf598d3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d204e921e1b94fb50e8a5b14fdff735002eec9732ea82bd27ccba489bb12ee8
Date: Tue, 15 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644927384
