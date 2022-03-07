Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981617A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646662584;
	h=To:Subject:From:Message-Id:Date;
	bh=fUNmBL1DE+NBAtp6zBwjdBLcxdjUS2SyyTQmGB9M1nM=;
	b=d6qAyjHAIGOMUEVe2LDwWRUs2rIHXlWX4fQ1VZ2bF68a6VLAQIhU15pJITb4i066
	0hCE6ujmAoIks9MCG0VQO/dEzieg7Y1gbG96tTJIrld74nbWvOEwUQky3hSwHtUEQ9Z
	nv+L6IZgBajSFSxqhEv4bkclLNMC4H+aJLNsWQF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646662584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fUNmBL1DE+NBAtp6zBwjdBLcxdjUS2SyyTQmGB9M1nM=;
	b=jJHoqAhO2kd23SezTgMLJn4p76c40Rg7+l+SchevMMbKW7Npj3/8ERnJv20NokWS
	VXnk0JdOMPc1QrZURaVFdMR37xIgL4It4GkXqx9Ct9eB7x6cXMPDUYSTNpQG4nekz0W
	pNipeVhby66ocN6IlekY0kdJWEcWvlBCG1IWKFmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64bd09fa-7e390a77-fd49-48b1-a2c4-dd20c6335eee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abf2a3727a93264a151ca91e17f4006041625c06da0adb6dff5f56dc42a48829
Date: Mon, 7 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646662584
