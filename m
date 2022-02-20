Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61028179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645344985;
	h=To:Subject:From:Message-Id:Date;
	bh=16z75wqFO+09SH6f8T5eWvuUwrT+qHebRy3nqtBw9iA=;
	b=QvuUXzr37cW65cNWITs5OELkpsKw0cvUfC1lZLFVdXYLWch9+Ms+Z/1Kk8G8DYTs
	U6XuTk8fpM96orhE5mrK56DIqLcWeRrH3AQEwyHTQ3E95O+buZVfvcaRlLpZC4jMx0c
	tZMHpAsfjVh+FNSfYoiiwWvtGwCPIujf8csvJ+2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645344985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=16z75wqFO+09SH6f8T5eWvuUwrT+qHebRy3nqtBw9iA=;
	b=AFehW+c1oY3tE7XT1CzmJLMxnUIdljlVRnxIRUom+Cq1EOTnrp30ON63JiDPLm9M
	KD1eALTbQ+esWcDv5e7eR0HgCn/R6ZOU9O1l5/q1/Uplk2H6Ef6rqQo4YucGKBXiBW6
	QqFogTqXUKeXLNqwYtAZ+Y3gKkK1oBi0L20c8iLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16340ec3-fc82bf33-bc11-4514-9b2d-875d4f46de64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cbf5f0153b73785f5c37a5d93f371a78786341d0796f80b8bf58142e1714437
Date: Sun, 20 Feb 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645344984
