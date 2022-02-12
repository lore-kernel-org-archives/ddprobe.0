Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EF37A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 05:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644643207;
	h=To:Subject:From:Message-Id:Date;
	bh=asSzqZfpO/+Q5OG2H/fl0TmArQboh9M4E9j8lxBl24k=;
	b=lt+4r0GCZuRUhi/+bXzi75c7CRADSQF7Wv83iIFI73KYHJfGkEicHXwLhduEnGur
	P+NRP/avXDDX7qHiVs2vuG2hVnR/Vja4PSUsLJyR6IdPIp758VStfTTtaJZu9wexT4v
	5f4HbZElb3t7xhUELmoNTsk8j16r+JiSBdMeKG2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644643207;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=asSzqZfpO/+Q5OG2H/fl0TmArQboh9M4E9j8lxBl24k=;
	b=c2VAQx0aaD2FTE/Am8bLhpiH9I17m3gIb5zL4PXw84wo1V9R9QDAgPjEJJR0Q3Ir
	QdyiQzFNU0mT3WRnJui7kyM1GRvjkBcHv0GXBKtGKKdXfY1BA73lNz8wrkVTFX0d17b
	JqlFwO5I5o74vuj9lrFcH+aGB/lVFw5h0Ls8Js0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec5fc892-ba7d3ea0-cdaa-483b-866b-7cbb64853692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39b1cb25367cb105df62ac6b8aa126e666bb77373a96030d196665bde594bad3
Date: Sat, 12 Feb 2022 05:20:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644643207
