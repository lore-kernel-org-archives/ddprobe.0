Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE637E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646356884;
	h=To:Subject:From:Message-Id:Date;
	bh=mdAoXDkfd33PjDxK8FXPvB+jUrVc4BXCoW9M2dHYFj4=;
	b=DbNtn8ffih3pS7SNLA0DnK0RpAnziFTli4SFgKsGE0T84SAllkdXJySjoOOxcMSA
	yEwF6puRPUsIfzUEhro23RVtM/XUQHVySDxfd3YsVyUipaaybZGpAX7upAWptv7HbxV
	Q5F2va9oxHfRSw4/wYSodLLOnwFq6K/7fmLbTvGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646356884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mdAoXDkfd33PjDxK8FXPvB+jUrVc4BXCoW9M2dHYFj4=;
	b=mKW4sOV5hlaZsGwMncDcLSyXX06ywnHw5F4HAqLjQ4af4vs0VRc7bO9YPKmGGtHg
	oUDlaPH+ZeTqZC3+TnKxC61tKERK2gha1lPRzZWNkFaw2EP6JSS+Z4rpqn2dVxqMkKX
	y1MnTtn0vsOS4wYooNGdePavL1/FL9IQJ3lvtzFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52846d4f-c75f607f-ffba-40e1-9a41-6026a69dc2dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 275ae18dfc9a4098f1d857383078b9c2e9eb7af3862078e7dba29ea039589768
Date: Fri, 4 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646356884
