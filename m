Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEA023C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645002685;
	h=To:Subject:From:Message-Id:Date;
	bh=WeJbQTok6mzWWwn1+82PCE9dwvkYIcon4Orhv9kHZtY=;
	b=BcMeHIVUI0FwTvSmt6ijWJQXnkO47S2dfAcvSN1bOvx0rKil4pGqBfYGPnfVBuVo
	i6A+V7FXtI2wNTvQkUxalSwih3oUhd8aK2SvT42Ry8MxtXrGb0/Zo2eVWq4S9+9PE9I
	5W9vOlpBHf/7c3fY5kRTmimKNAsQRGzVVTmYHYP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645002685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WeJbQTok6mzWWwn1+82PCE9dwvkYIcon4Orhv9kHZtY=;
	b=aODbBNq6nS/cmzuNyg0i4ySweUC7Zg196/3XFa6oIqhTHjI1cMNMW1JW88jHVTUT
	FfoUKFNmyxXdWccNlUYjtBcxbUh/DfedX7O3xhdvOqrxxwB59jFam667J9MST8cCBfU
	I6tyW9AsAARIuXiSGkA3UCSahg+uJrvFG7MQuM/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01ccf935-7fef76cb-cd06-4d24-93b0-eb1b23285ef8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8679841ce418b9fbc7b2d66e6e7f233b1a87adf1b4b639ca8710c16635574791
Date: Wed, 16 Feb 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645002684
