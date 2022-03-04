Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D60DC7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646409685;
	h=To:Subject:From:Message-Id:Date;
	bh=zKDnUPb5mzsIOlov8XJGZhybKHJrH90EPPdEcfgOxQo=;
	b=AUz7r6/z/tjhq8erU+qxczE+D6dGPmHmAOH0zL1VJGkXtKRaMUVzdAs8daTaeQtA
	ph7TGL4kRVxOLPgKQfh/EfI3dYeKmzUseRahXsvsl/4CDyLvmXj0CtXfAKxiakDi5av
	N0ffTzUp0VUgGJcIyrbHRoRUgBOxk8Keg7ohf6ow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646409685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zKDnUPb5mzsIOlov8XJGZhybKHJrH90EPPdEcfgOxQo=;
	b=hK+ihMFENhJPJNFnv+BTZLyGe/dR7M3ct2sNTBEL4DkI+476W4cDMqcBdzv+LiQC
	HJBCV7yBueUfre2w28u2oDU5A5kuPyB0qWKkBuIBjM8AHeM33O3wh7cxXoEPcg3LfsZ
	uf74NNdutXPMyiRJSQMkvFG9iVXJYXUU5wu4fnPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55aa172a-c4c9f778-a3c8-4f8b-89a8-ecee0419f45c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d89f37bfdb8b190bb2644ca405eea51a0e9c1d9e77fceb1819be7355fbdc6d04
Date: Fri, 4 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646409684
