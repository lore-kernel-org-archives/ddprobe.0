Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964477E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646601685;
	h=To:Subject:From:Message-Id:Date;
	bh=eZ1MVvVx8/v68deeZS/4mRNbYsnx5r/MvM+2ZLHwFew=;
	b=KB8Lc5cVGFK5SE9j7ZKcLjKFHmDlJhdGAaZn2aWKal6WFdQeJ4qX4XmPGFytP8Kp
	7/Rm1lV7ioFFxUcS6DvuszPSJFGEPudNDYc2oLT28j6oaoZRMpxzCcLQFO9JO1+MKiw
	UJ/jlYz+t987o2faUW4D1DUlhjxhzvhndEW3LqUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646601685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZ1MVvVx8/v68deeZS/4mRNbYsnx5r/MvM+2ZLHwFew=;
	b=HQg9pJ8275MKQiEZA1b/YBIhwOmKS4I9eSUy1/bisRWoDFpNZRc5UWsMdYb/Sm4n
	ofhmG+kWnzjbY0RYHW625snjh+vfNMJuvesl+pg2OQdKIXxep/WgebNHobCjfIFmgem
	s7kYlNH1IZXSdwoVn0dS09Pe1xXN4n7lF0+rrcD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f611bc75b-f35e41c3-c808-4247-8ca7-86c115d78f08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd518497e3efedbf2d5119795928442f662102a3e744ba4ac306377003bf51cf
Date: Sun, 6 Mar 2022 21:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646601684
