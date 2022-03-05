Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5C32F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646514084;
	h=To:Subject:From:Message-Id:Date;
	bh=O6PMYWzveVwdNP6K0MFuwI7qDdlF+3S6ilKZV4OM5cs=;
	b=KZf6reyHearxrSUWxdtZ4/RHGUBVKKHV42hBaxMdrzfQ4sJqnk1IrXcxNz8HfCrn
	ntVIAXqanetUdFd24ukkubhr/lW/L3rG3bYFGr6vd+kJqpYTrNix8zPKe0n41ctp7lL
	msYFSV8cvNa7LtWpIISKRarwFluOkWcty85zH6NI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646514084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O6PMYWzveVwdNP6K0MFuwI7qDdlF+3S6ilKZV4OM5cs=;
	b=OM4s6ESy6cDpDWYvix0Zppq2lDa47yOGD0zJLxD7Zd0d3gDbWmrgSNOx2fWIVk7q
	NGQi5Z9dNw7ZtzS0JEmRFyD1yLNNhVrj7/Susbi8zTYPWOfb7EAksBSYqUYafJN3Lm8
	CO5CggwR6PTnCgHZKa5ofVU95YmQJT7xRrtmLBCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5be31b67-9489aa7d-2da4-4a64-b27e-521b2c2c49dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae3c841023eaa40efdac731fd38c0a358deefbddd8a761066ea99e9c36a19ed6
Date: Sat, 5 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646514084
