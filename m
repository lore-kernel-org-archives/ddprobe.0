Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F7BA47
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 19:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649531578;
	h=To:Subject:From:Message-Id:Date;
	bh=ln4IweD6u1NOEE9O8PlTKBPS6NNE1oNxB/MSQMC9bA0=;
	b=BGSaxzBGZ3kxSRFb+BnhaB0wnt+KuRMKdHyq40Ys+OgWakIc9HB5hSQ9cZLo4Zzx
	oaLloTmiwj5YmqLMPXNvW4ZTrLYqo/ei76ARdOaKsV7FNmnPknGo7SWTJi268Ce7xPa
	uC5pAnrsG6pcAGBpPWktCcUgn7qoQLSA7FYyh6co=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649531578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ln4IweD6u1NOEE9O8PlTKBPS6NNE1oNxB/MSQMC9bA0=;
	b=UFWICHMOAC78EJjjEqb/0vlMwLOf6ESnasKxlfpuOJiQg8bfe3toqIMZrqG31Q7z
	Znk2sdOUmyyWHoq6rDuQc1jhfObferQNzsi9w8tjRYp37MuOZk4rtfnt+P3B0v7rMQ/
	oWv0zoGRpcUWvo8QZhadmorj+LbU0GoH4v9M4jLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800fbe67e1-de36e981-f02a-400e-9012-56f8933500f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6607fd93811548558fcf0298be728acbdf3a0dd28bda625eac63113d1327933
Date: Sat, 9 Apr 2022 19:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649531578
