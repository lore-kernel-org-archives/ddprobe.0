Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CB7437E
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 17:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648489138;
	h=To:Subject:From:Message-Id:Date;
	bh=mkX8k/McEQ3phFaIOnl+SvCZSdbO/lLn7ZHRQFDvF/A=;
	b=ANeW1LO9Ze4QO+/HUC4Hb1OhDcv427oSyxwMU4By880anoUMRgvSKseeTcQAEREk
	2jHluRWk0QQtZvWmrpkxpSkBQVQx+Xdia1upAkBsp/u3H4AMarwojdQLwoUhj0cqINX
	B1lhCoTdyHMJU/OLwfdC9I6SZpvTFP2wzNYU6gu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648489138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mkX8k/McEQ3phFaIOnl+SvCZSdbO/lLn7ZHRQFDvF/A=;
	b=N+PuI9l51tYRmnEk12Opm4ATkgGbfXofDX9wFxSJ5SNUHp/H+eIArU0/s/8CP0qZ
	rzuYks6to7RBP/RDkE0HHpOcBvH3uL1owi6XcgP6lRBHWg/MNEhlE4lR/d2EZvh/Mxg
	1zCuS2Csv7lF4ndnjghdveT+gY2AhmBlK958W1JE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd19c0880-036f68ef-c737-40c8-8c15-34db1b16560d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d4c0eb1db4cf2cd281ebae5c371b4b188bd066a415012dd54c44e06ef0cfaee
Date: Mon, 28 Mar 2022 17:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648489138
