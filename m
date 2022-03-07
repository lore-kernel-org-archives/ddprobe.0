Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749ED1FD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646630784;
	h=To:Subject:From:Message-Id:Date;
	bh=kJcMfhxV8dEwEYRQSxN2kaXQYlknmu5+LuqKNPfnk2g=;
	b=dPjDgdLH9OOHOISRcaKLd6cbG69IzmtRfawyKNC3F5sbfN07PWKMjsAcdSienePi
	yQ7MbdRY+8nJ2WGNU4m/MXavwvMMenR07nHR6i4jeGebIHdYN0IWCiE+d3NxCRYYgNa
	/jMOQ1k7eXvfDo0Stn8yRqvZ5FEQRPxpFpW6PM7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646630784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kJcMfhxV8dEwEYRQSxN2kaXQYlknmu5+LuqKNPfnk2g=;
	b=KPGbJITCckEyboL4FxQLRMStN1wsybz8+GsMPYa6CModMqob9jKACReY7IBQJY38
	d9GD7ZBRkASz95EdcIQfuhw88jqn1idnpETYNfqTRNtuYs851laqRY0WGo0RZYIih3c
	CTiQN4xkQvKec5kn2qxlRUZSqER7+B3/d5y/eTBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f62d7cf15-eaee70b8-b53b-4253-94d1-ef6a5a542a03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a0aceb28a75ebe52834ae64343b6efed3aaeafeecf41cd79cd710fccf7545ba
Date: Mon, 7 Mar 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646630784
