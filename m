Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E270367A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646626885;
	h=To:Subject:From:Message-Id:Date;
	bh=ZbqfrylbUlyp6npyh9sG6nZmgox2UnXbRdNWjYQ8RnA=;
	b=W474IbMJbOpSJoybd3U5GSZDE8x14mkJu1HAkX94wobDirmNVHSrlGjvJ1UrlT8k
	qiVdr8jR8AzgkFJpPtiwS1T7PeiqnqFw14TweaPKiyhroSIYSyCVqvEMkgp4zBIsShh
	RZrT6+Uz8Khl33sI+98p8MNkG+UcN/udRGWalBNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646626885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZbqfrylbUlyp6npyh9sG6nZmgox2UnXbRdNWjYQ8RnA=;
	b=dKYSe7JV+hjsb85l7q+Zi5eEQkgsRchIVXt4aZDfMEC+EFWdwOhXKMGXuH3LqBhE
	ZTCsDks+09FhgkNwhY/upIUh/5j/YjbPLRw+i9OBXHBrNe4gRfGsrHLsk9EdQxigVIx
	zqPzT+qoh4S8g2T3xTvu5xQNUPpvjNSO8mTyxzHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f629c4d23-1310f7c9-48dd-4517-b385-6513842fdb33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd7ca1f364b2fda2849eb32c60b01374f219828b11405a383ec49b1d94808d5e
Date: Mon, 7 Mar 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646626884
