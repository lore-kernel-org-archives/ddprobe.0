Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B2B7A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646800284;
	h=To:Subject:From:Message-Id:Date;
	bh=8K/4txQUGkWjb32zDVqyXA815wM5gDoxvsMsy4HhLuU=;
	b=FK1I083Z5n7eVAf6qayhn50Naz07XhXB6vwEYVZdU5YoxE38+lEpk7JPa8p1AUvJ
	xYFnFfrdi9wpmL1MGGVnT+9WjpuJbxX9iG01hw6rmd43819chyEUtcjJMDa5mjVjo2f
	Y5vrm3N3JRGkpa2HS0eQDHLa8xc2lZXzkAWJRQGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646800284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8K/4txQUGkWjb32zDVqyXA815wM5gDoxvsMsy4HhLuU=;
	b=ZhBvO6piTJB7p4J9wXfxHpx7QqaSS9zxqs6g9E//OcL/ErFYYptrf+nXUI7xRLYn
	JZBqtUFylsXtcvRLxc4cD4yujxKloOwm5Dh7A7JmqsSskWyjfXJl3HGm4aKeDQlAxtF
	AZefDzkSpdhZYm0il7d52B3oFYdi67Cocf9rHCHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6cf22c3d-8790875d-1460-489d-adc9-7a69194eee53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a45b484de8705ddf6a56881459b8402439618407d0d2fe354682782f07f19ed7
Date: Wed, 9 Mar 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646800284
