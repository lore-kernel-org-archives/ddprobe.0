Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DF25583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645306284;
	h=To:Subject:From:Message-Id:Date;
	bh=T6SuvFaSZ1pBWANn/ahNNCdJZqcnEul4a8V0scDwz2g=;
	b=c+s/b5RCvB1EYu0xIhatkWP+mupGURseNJ6ZKNcai+V4dOUz+5q7O1sqX4JdJH7g
	3+VRKNepECTWEp56GLfJbz5bBBY98of6KlOLAg4Ovfwy1zraevEAEqpQdFl2AtaB7q4
	XZw/kfdI1NRt6b1ix5YO9hkXnV3cj2f+mxKq7Tvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645306284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T6SuvFaSZ1pBWANn/ahNNCdJZqcnEul4a8V0scDwz2g=;
	b=hiHbSSjqh5j3ncJQZ3kYEhJ4hQPjABJhXK+CbuTwoJIshbh44svL+CkQGg5+yN1E
	FOL1+zx0bSQc3f61z7HHjGReLBLrguuyARopv1rcCmXXn9dj76XGWf8Hq4HIGCk5ksw
	MsIZfo9jN1UEDlGFbPajYwGv+Ag7zut1qkyNzPAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13e58af1-6e5f469b-de0e-468a-833e-967634804417-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6afd3ba849b2ee61a4d24412e01ac5452aab35b05d65ec94875050f394af3ce1
Date: Sat, 19 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645306284
