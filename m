Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09E87E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646972184;
	h=To:Subject:From:Message-Id:Date;
	bh=DPovIB2pEW73ktwQwAQ22C2+JMivONoko+PwcGjXqkE=;
	b=SrF+p6AM26iq8jCPxd7BQDHzJacbCWxPhvnf85iSsWttZVKslzydpp8KUgbRN7YJ
	/yt7VgeSyAzb943T/blDYK96kSaYFlABeS4JkOsKvPdr4A/IJAbsW3iOQx/AC3HZF5l
	S2UQybFiz99V1DUoomUzC/oX7mVTWso3uEOew5vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646972184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DPovIB2pEW73ktwQwAQ22C2+JMivONoko+PwcGjXqkE=;
	b=UpVFnmD/tLVtDHn6W4Ir4JfXrLIks6N0ZEdKScahnq8WK4frmBtmOSrsfZxyD6m2
	nTXlADjTosOCh5t64oeJqLL3BmKxWTgw2qxrHiOehfo/+A04WV8ci61U0QxIIs/Y7mZ
	MDL80/XOPjlN87q1fvQoGqPrNDWV8xsBD0D4OK4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f773128c4-80d5e5c3-a768-4240-bb5b-8cbc65fb013d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01a9e6af056670bcb135e215d20bf84a4027ecb7de6987815b73e7b21a3de113
Date: Fri, 11 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646972184
