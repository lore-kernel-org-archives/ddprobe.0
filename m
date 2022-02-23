Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FF1A56
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645617084;
	h=To:Subject:From:Message-Id:Date;
	bh=p5jmrVTQLe8RA3LQtBHK1EahwEay5qLXpuC7w6HgnGw=;
	b=F4hn61Nq789VzT6qKQVg5Sq41Fy0atZ/ldXpBZqZ4tpTk9A9hEOUzUXlSEYXXj22
	2gzutRzDOcxSW7VXAGQx4E58c3uDZJDEZ9s89metgu8ohjmhr3QLy4AJwfWvxMCy+id
	v+NQERdmC6VbJHrrETyok7q/4KQwwPNF8gwyosdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645617084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p5jmrVTQLe8RA3LQtBHK1EahwEay5qLXpuC7w6HgnGw=;
	b=RdcqcPX1KTQZU/As9qfJIu6xd9KvBc42b+ZObLG22DvrZ250Ce8YDIKF/sAc8AnT
	RZ5BJpUIt9S7GMeDpM8lVAEibwQJ3OHO4BujEGpQek4qkb9RGVwVODYX7268tF52y/b
	mv3DylLjkAZnHYTlPudBpY4cpmYZPt52KbeZVDEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f266bf94f-c036149e-035b-49d1-8f30-8d29dd1e6a53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e2b79d2980eef707f6b8b881e7d5bca8145bf9fbfbb16b5194d211ee7c071ff
Date: Wed, 23 Feb 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645617084
