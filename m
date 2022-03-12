Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6632F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647080785;
	h=To:Subject:From:Message-Id:Date;
	bh=2aiD8PTjgbqkYt897WWoIojEtzA3KCbNDNCaJhZfUXA=;
	b=ghBJACs70G2quG0J3SitJR0a92dCGot0lcSrwBKmzp2AvgsEhDyv1RC7BR1LjTV7
	SBWVmETLuIy+WPckv/UFP+KcdUY6mj1AK9TB4sJXQEZ5vTxQkxteY7lKSJ+1QHleYOn
	NtIpwEJ0TcYGn14KYq7phqAdhvHAh+S4FWpd3IVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647080785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2aiD8PTjgbqkYt897WWoIojEtzA3KCbNDNCaJhZfUXA=;
	b=i+nv4BwqPts0C+sg6qhxIexe6x9+j5EZKbyzo4p+vnsh4SQt+Qu05rP3IEQaRz1w
	XdAItzVI3eHp4OrX1Y1+DPpiQmMjgzNhJeUTaYJEiUQm4dh9ybSP9lHScO15kyZT2wZ
	cjp7hlo69B2+QJqTGJc1ka0RarKS+RyAvgwcw6Vw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7daa4353-e873d887-d695-4afa-b61d-04c5edfedf83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc18569a2063a720f0411468c746f8a77dc2e0e20cb207d12187ca1dd0e81456
Date: Sat, 12 Mar 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647080784
