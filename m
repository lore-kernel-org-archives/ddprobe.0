Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12CC3236
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656284813;
	h=To:Subject:From:Message-Id:Date;
	bh=5F79kktz3gDrWVNJl/Lzk0nkuChxcNARhIGMhIJG+iM=;
	b=GHkDU4qObnAUUtCLwPMpUz6J2Hxm3qjrXWuDik8O9Kez9VLoSoRfUK3j6iP+ptv3
	VGU4sMHTOnifTHHNaV6EFvZHqUSKTgZYZEE1tfMRlvIplqzItMY38SbMWuXG5ucJ4fp
	m4Ah1+WC+Gl5UUikGaxxk2hBXv661oZTITrjcSCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656284813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5F79kktz3gDrWVNJl/Lzk0nkuChxcNARhIGMhIJG+iM=;
	b=hJxbDRiP2T/+BtYEiMwJkINqqf1WSp8yeHdXUSfZhzMMTKoeiaY9CLeKOLD3e2w9
	YiIuNDSjPBDxxKT9OtdJg6N3vX76EOb0pvyYM9HySdUwtBI9wxiCPJ0hvsyEuOfXFff
	ckiaNO2UK+YobY4EFDljjqFUmdBKwoNdR5ajbiuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a244946a-f89f376b-9958-4183-94dd-1f37a3c027a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fedbfcc1f48e9c2db70ac13e261df3decd7f6d58be6a34a1e302a4f8666b76d4
Date: Sun, 26 Jun 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656284812
