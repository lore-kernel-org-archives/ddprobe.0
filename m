Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A60710ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 03:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648092478;
	h=To:Subject:From:Message-Id:Date;
	bh=pPhYCfVURJq0shFrlpLyNftSscy9gBU7QlW0tBx/fc0=;
	b=UahqkH5rdPKldYf0cqlBv8gN4iY/Wk2oA0M/xWOd1gJO4CSqUVVi78vEkfnT7nZ9
	RvdRDS3G9DujblZ7PKllzXpHOoSfJCN9wB7UA1Ocl/mkM7fL4GRyDuM9gqFQwjJk2ZL
	fogLJF4klrGK/4LaaY4fJaOKStuHZrZQ3TbM5+Fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648092478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pPhYCfVURJq0shFrlpLyNftSscy9gBU7QlW0tBx/fc0=;
	b=TuxubgANlgrbonsK0GUFQ2v9l8Req1xAn0e/9UJIkOalH0ctFYXgJNXuRQHcOmKg
	RiLc8WT6gZkv74u97A52HN2SEi7nqFTMz0GyNbcwwqFrjInQKKB3Ki9CLHrtPiWm3Dt
	WCLUUUNJkIsB0itoneaEw5uy1B0wQNJqicTnAOsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9f77b61-64706b76-c60e-4f10-9293-7751820f756e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6be84ccdf3aa9f0aed6d2165f78e0e3a10836e80adb19bb30d7e20d1b0504d4
Date: Thu, 24 Mar 2022 03:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648092478
