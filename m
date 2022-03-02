Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DF52104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646193685;
	h=To:Subject:From:Message-Id:Date;
	bh=w8VCtzMh8NXGE+FI3WpvsL5UGjKD+PJzLlj96i8nRt4=;
	b=e//yHKVkUKDvUDEHixW9//26BhFiRT08LEHREf1pVRCer3I+oFrX2I9GiYHjtUAT
	UsBG+0CBVmhNOVYjGRZVgYhk1AfJ/Kf5R+WzuR7YTIh4tYk1HkzfHH5dm7TrQYrifih
	mAHdiiVvNO6kTDo56ivOPx1JH5QoXoTI6rDDTK3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646193685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w8VCtzMh8NXGE+FI3WpvsL5UGjKD+PJzLlj96i8nRt4=;
	b=THTOCWfd6efr/k1VQNKexgaR2uov3KeLSyDWXhRgQMhFO5Q/XFCDp6KsdWH9wQH0
	9U3D5/mG8JbRZaXAy3D4B8xImBWGkf7l+fOXtBIIdxoGSkqd8RrwQ/gPmHSME3/qlHY
	nt3h84SLSKnev6TMM2uW02nI+S/3r15PP5nfI7nE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f48ca3141-33cbefa6-807c-48e4-baf5-a942a0dabda2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d990e3e27e016de39cf56ce7cf5b6f2bfea948540ec7d29c7c54eba24b79528
Date: Wed, 2 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646193684
