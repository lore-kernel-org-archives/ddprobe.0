Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E7F2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646513484;
	h=To:Subject:From:Message-Id:Date;
	bh=tqBqE9eAjNt13NqfEyOW61IzxcuJZTX3zgUt+Tq0Nw0=;
	b=bccHxVjJGji3elGiwY5xMg2EqauFOG4RI6bu/ebZE4znkhg1f7JJOXWLEq9wtKTR
	uDaPNJPZOpE3ocvSEqwIQi+4W6KLxkmRd2uJHX+klgX/g59KmO6lXnISPq9Rw9aaBaO
	3c5qKTrOU+lrhNvJeWl1cPWaXmaRiIyHahCQvQD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646513484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tqBqE9eAjNt13NqfEyOW61IzxcuJZTX3zgUt+Tq0Nw0=;
	b=E6vGp05fl2XcjB/Yuzx3ED/RzVW/cnLUWANPF7SAkYSO6QhWojWpgt65B036NQ3i
	EKJ/U/5POqKkkzqqg3K9ZkxlxlzHtTRJMbUdsMIlzEnHxc/PB2FBxXgOITJl9w1y5cW
	4r8Opgggr9lY1QwhUsDsS5VrhJ5ZB/PXJCtbDFjI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bd9f3d2-f9182c17-d5fa-4c64-8ec9-38d41bc88dfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2c6c990d430ba24784f93c97eb4debec78b1b8ab03536285e40155267aa3c73
Date: Sat, 5 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646513484
