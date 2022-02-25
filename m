Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59FC23A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645796485;
	h=To:Subject:From:Message-Id:Date;
	bh=+c8mLB5CwywzVRVqqJ5o2jm1qA/6ggS+/cv0hmouHGw=;
	b=mdvmm1V7PAv9Uiqi8dmLhbWI0z3PDhyOUhC8KBp9o9v5599Nb0r16vgiPDfASc0t
	f+F6VwpUwUnhLOV89r+3e5Z83orXh1t9T7ZCdH2VygLkNgMtOEvhHqX3c/uhT4BBFiG
	mlZ7maLVaUnW56QoYRBziFDVXhRYYO3uRd8+A2FY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645796485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+c8mLB5CwywzVRVqqJ5o2jm1qA/6ggS+/cv0hmouHGw=;
	b=S66YkhQH/YxFPPUH78TcZY35V91JAjwcWD5qleV52bjZJp+HwdWmfEYSaA6TyrMp
	pK00A6GN3650sEwruxIpPkbVWWaZHRJ4f1OXqz9uDZlMvxcW1h1sz4x0856+c9P2cl3
	VP+Z68eCQjGndZQ3b8M5IJz9VwHGV+OABqStlnd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f311d66aa-b9738faa-4269-4877-ab1c-a57a9029aedb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc13efa9cae2bad71c49f122e2acbe0fdc146e31ecad00f2196e36520d51a3ba
Date: Fri, 25 Feb 2022 13:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645796484
