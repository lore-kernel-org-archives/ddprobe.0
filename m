Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1241FD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646633784;
	h=To:Subject:From:Message-Id:Date;
	bh=i+w0ZpFZaMnw7ixD7QoHqDBef+lZp2ut/QJrgdI6BiE=;
	b=MhizJ0QeblNd2ed6V9DYPbTjXTwBgUCTyhefXv1qfOdx3p9aILXSq04w7DCe/G95
	zcmJ6RfC0/gasAnXGREPQdDmBCCNiPQ3obMLKOCjdmOJ80G+g0WEUWXk8wJ4Uf4wdG+
	xqzVU5JE05iQG9noU4eXkaUxOdXPI9PCIDn3lRHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646633784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i+w0ZpFZaMnw7ixD7QoHqDBef+lZp2ut/QJrgdI6BiE=;
	b=GF7ZoIv+x1psReV2sxtsRg5L70UxWU4SeDKPEQY/Rn2rhbUbj4C/hyQLz6u2WitF
	xGpOCu4O2klud/DnA2cCt4o9XqHPVEYQzHjFx4U7V+lBAOxcL4z/ViMivckbBxi+W3I
	KzHeEmcB5kIWAXOV/SsGwI0JnzBvpxXBstyy89aQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f630595d5-39f4c4bd-798c-4ff1-bfa9-46151e7f1ae3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a934b5e14d16cce7cf1c505b9a558ae5bdd7c59edbb62f5ce53bcd903ec4f641
Date: Mon, 7 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646633784
