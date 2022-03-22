Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9385742BD
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647978085;
	h=To:Subject:From:Message-Id:Date;
	bh=uEMbUzykBul2gMVf1USvX9TwBuK7sayMnRvydrFsZVo=;
	b=DDzWL+Q5wwhyiz2jlZYUDzzNFAX/YnzLyVyEUeu9VMS4XzNhxAFn460SUo01IwDl
	FR9JJkCdF0OsKGvLWdteS+NyTwfxmGuDZpnIBok4wmFfVGYW379I/VPWRAPaovyha6+
	LT9GrSf2S2asoi6BrS2uuWGoDevicQxwGfOtjTcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647978085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uEMbUzykBul2gMVf1USvX9TwBuK7sayMnRvydrFsZVo=;
	b=DCJvLC8rkrAuGhaAlau/ln8jMKvpLBHS8UvnXS1jOP/G4g91s29AZDauhpRnrCAD
	6A6HwrZJD/fjtk8S/FFJ/ft+KQub7YAL2MibdBPwTHDZwtXCUQrUshs3P4bCJl8qonV
	dlB5DWuGjqHz5qtK+wnHEQv0/X+5tdfo7ryptpGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb325f9a4-2716b92b-0a31-4a4e-8646-7cd17b79e1de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c92038cbc15527f3d3377da91663c00d4c69a6debf7a975c3026edeb52b9643c
Date: Tue, 22 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647978084
