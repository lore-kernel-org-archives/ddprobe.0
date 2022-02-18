Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664F72919
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645176384;
	h=To:Subject:From:Message-Id:Date;
	bh=s8FbMuiG42HdvcnCrcAg26SieaAIXo/GTHixzdVq3iQ=;
	b=VxVe6FGrV0rLiGm7bxrO7dxYeKHZ+0bfcDv0Pjf1SmioSLDc8YWAfFcqoh3O9kS6
	7++rIHA1Nz5/rR/B8Es7lbSOQzMv3dCEPXKQqZmWihhVSQFYXHS/dKE/PRf4D67d8Px
	wOvvQjSaCRRyefBcIIecjTvIqgCwHYt3m1k207JY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645176384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8FbMuiG42HdvcnCrcAg26SieaAIXo/GTHixzdVq3iQ=;
	b=I4xRK5CZ51VjKTe/q1qZDQ35ZWSnadjEY/oa8Rs0ijnoeSUWD12utRl+Tt006Pr5
	BWqSl3K32wS+DE0P4X4XoBBPmQxfzb9jvCbSa+eO+Xm+1kTmkuXyOCx9wpwWaQznvi7
	0KllD0Stxm2YGhPY61FLKghhaR9LviBl5vC2w6fI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c276d01-2bd0be0d-830b-4edb-973d-f8d049d0d7aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dacccb85ff0e1f4eb44758ee7af2c751b8f50d4a7d469178721183cbb609945
Date: Fri, 18 Feb 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645176384
