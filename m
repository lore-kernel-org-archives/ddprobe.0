Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890B6645B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646790085;
	h=To:Subject:From:Message-Id:Date;
	bh=9VxMer/TkDxgr/80Gud1SrcjRY5ivUpS8Mui7HcDIvw=;
	b=hU+3mlqxV7BOcPA0pm16Z9/02o/jBhHzeRhpLpAtvgCE2C66gYzISeQRBKsPJroR
	faTmB8Q3gkMdVOQMrbVS26S2bKhamCm/G8fVVZN3dK0FaVI//92N8jjyPDrMpk99wT9
	6tuOBx/tyBy5qW23ui0lNjAL1NyeTzSc7u7xogRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646790085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9VxMer/TkDxgr/80Gud1SrcjRY5ivUpS8Mui7HcDIvw=;
	b=jaZFVBbdGDkG6E8ZZOH3sn7/fGYLRTdDzlrZAqoJYYhl7mSkxiXkWpxE5+BTXZ8u
	+JPgxrjK4OvoM3kDpRIfzwEdg3UlV7LOWlYbtuZgz3RTozEDtVvoTPR9YO5T4ZMfvgO
	sIiYGWoIJzRvjbvSwfA8VYeLhg2uIq+UohzrHLqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c5688a5-799832d3-399a-435b-8d6e-388a20695c3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5220c4723dd1141725a064a7d1fdeba86be10f5fe3494cda0ed2ec059696a87
Date: Wed, 9 Mar 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646790084
