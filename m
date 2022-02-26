Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184B77B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645833685;
	h=To:Subject:From:Message-Id:Date;
	bh=WBkQWByS3+cYDkIIDgFpG6+aJDGpN5q/7b5EwzvCM2o=;
	b=e7R8HrgeZjXcvqc6IC+m8IlsDW/XtwWXULQLdYsxu4dq0/5uPjByIPJ+cFfyPP/s
	JFu6cGW7Qmb2OKVqjWXtXlnmygdt2MOWJIHPzXh1Akis5oS2FbIGwL2xAreJG78WMMc
	yuNZBnS0zZdG+Gx/AHb5XtFtBhcODujQQxYZvTfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645833685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WBkQWByS3+cYDkIIDgFpG6+aJDGpN5q/7b5EwzvCM2o=;
	b=KzL/soj9W6OkJ6Cr0oMbFGTXJDEcdevTlCkAKZIrY4q9i47+yNg5TgNACRvmoyaH
	v9J1PnNQ2fTyoI2wgmVBy3+tU8z3OAO2yf8flyNs2H5SGZXOjNG9KIQxxfKmGPjfzEA
	y5zFQb8Iy3VTpPr1A4cOltQDqgt90YWdi7eGmvdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33550716-6c99e65a-238b-4d50-bb28-9ad18e97c829-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed4bf8c0a91986ddc0e2ae2230ad1718be9b92c148595830fe523b48a19ad6f
Date: Sat, 26 Feb 2022 00:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645833684
