Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6D12102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647018685;
	h=To:Subject:From:Message-Id:Date;
	bh=161Lpx6TzUCoaxRZWnZYctmzmgtGB2JFG6ghDHOpzp8=;
	b=LogIF1pMVFaxOp6MjJ2z6kq1M/1cwTKjK4jsR7Hirhbf5bQrtGbqghcjs026/zNd
	7lq7Rcv6brFL2Rhed8+PIoZzCHQy7hFt1pnp4HL2HUeTqQ2cN5hObWGSeXXrvZWK1q1
	PL7XOCvTiC1ZuamZvdzMG4ew8voCe7a9tI/dfVps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647018685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=161Lpx6TzUCoaxRZWnZYctmzmgtGB2JFG6ghDHOpzp8=;
	b=MwZbM8kMTLrEHdUUgOlJrLCmQD0QZRNFpiS7USVxKOQJa52xic4ONC1OVNFmCABz
	x8xQC2moHOmb77iTKwvRbgl09ZtJ+hoo+DQnsyc2137K00b1VpPN1z2l52OWiLmafot
	xjWMSGoevcPcWUSHmG/Z9d8fQ0LJTsp+M2D+ZrNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79f6b204-7d6e3d41-3fc5-4098-ba63-b41ca9f047b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d7887b3f95f5159553511137793bd236956fc1c2b252615214189b8909322e8
Date: Fri, 11 Mar 2022 17:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647018684
