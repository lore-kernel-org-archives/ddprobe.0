Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E61A1849
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 12:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649681578;
	h=To:Subject:From:Message-Id:Date;
	bh=/DEtzXmi/RrBgSjBHZM04sxQnf2UAqS8S9pJStQr7Qg=;
	b=cwdkzLWaqrVvqmNwZ7jWVu+8KdsjXOmTjQbP07dROw3PqJQDD3mVECWeuvFU5C+6
	YxRAlRAP7pn7ceJtGcEalYki7+lbRTzDjdQxQzWKAsZsvOUZVgkbYPcjQQL9Q+oCNW+
	QguQiLcWKisuNZcxgMz4ltrk/zXg/msZAyfofbYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649681578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/DEtzXmi/RrBgSjBHZM04sxQnf2UAqS8S9pJStQr7Qg=;
	b=SxcmmjM4u8z4DDk8Acdiy8aABfFQ+WisLzov/4fBTB62MLMQyldGpHI7QCY3/rKJ
	JLQc4GAVouOCfLnP+y5WnUJx7cqVEuxzoWgbFPhUfOADmgu8ZNVFjXTwWWY8GcZqlvP
	L6c+A/4svbAhlvFGo6Mxl1g3+N4I2iibhg58awr0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018018af3925-217d61b8-c5f2-42e4-a9f7-d61c9ab0beb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa5de0d14baa2510b633d3e2afe23a1aee65bd1fdc731b5c4d0eaec8d057c4a7
Date: Mon, 11 Apr 2022 12:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649681578
