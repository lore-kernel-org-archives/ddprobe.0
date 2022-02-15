Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11AEED0
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644887485;
	h=To:Subject:From:Message-Id:Date;
	bh=AU1bbkVvfNIB2dzMX+Memdrf+gwglxa1IJBeoVWlZrw=;
	b=gS/4H0OshMDRr+fJN6oMIFMvo7jiECUBgLkNwqEVEvule4nHecLan9RrA+z/HJHO
	AoghfWFn0d3kQILbl/BvxnxkosP53SqXA6GR31ju84YTpLUpOThH3tvJPs1Hekv9VxJ
	+KH9koXFDrfdO7F949Jy3eFT7jH+uBoXI5iHgFNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644887485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AU1bbkVvfNIB2dzMX+Memdrf+gwglxa1IJBeoVWlZrw=;
	b=QOkl3Hku7KWVgFTNJ1sMcBn9h60oKbwCO0TxlB7Jik3dpdwuhBYIKfF5dZhojDDa
	Qu0aOnqB2exJ2vhnL64CNWfzX0N+fuZiY45kqPFcvugXn4ri+AFl/oBOqGiJkxCv2Os
	KFoEwEHIhP3ktIa+3BGk8WlCkgkTLNw1JkkBzVc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efaef29a9-efe0121c-ff90-4bfe-a956-baa197794c09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ea61360ca4c99a420443d975d7e431a1e1f362bdb2d6627ad15f4cb01ea79d2
Date: Tue, 15 Feb 2022 01:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644887484
