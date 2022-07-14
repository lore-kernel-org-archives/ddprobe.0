Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2030017EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657783012;
	h=To:Subject:From:Message-Id:Date;
	bh=10+LqWhxXqUF8vOtITzImkELnDZBU79i6IdU7/PMgNE=;
	b=EQNtX/FTRYQp/GlXHWXrr4guVQQhI/6uab55shupBdTpLhD/Ydx8UwjfsMZQ52LT
	puuWFGpBx50VH+ZChJKwdGdRQjZWC5GugcUVA5bbDkfCn7X5TNgEWp+W4FHxM8pM0B+
	Qf8OrFI1a+60Ks4KdgsjfjGSX+Z1+PpCNAa4RhuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657783012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=10+LqWhxXqUF8vOtITzImkELnDZBU79i6IdU7/PMgNE=;
	b=ZpGQxDk+rl3QQ1hW1J3+2LMMH6u1sb0IZjDLfOkrWuTb83o/VPLN39Bo/cfFBC5o
	KpkwS3XGc6L4zHZJiUESjcEAgzgTJAfZTbjKEyKCG01NmLVcdDakclB4No9v7Z7jZ8Q
	nlsy5R1H7QhumcVymZn6aD4FkqfaBDK225LzUpPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb914bb3-a255a918-253b-4217-8e5e-6a2b1b739462-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35f07b2ed57f9e563e8f256755da87fb3f402564eef9112debb892adf9875362
Date: Thu, 14 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657783012
