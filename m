Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425CD81F
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644856232;
	h=To:Subject:From:Message-Id:Date;
	bh=/rlLHn8BTl7KqaUV0S+TCmEwsUPHU5WtUxWkW+XEpCU=;
	b=Q6aDfnSs6Dv5YUVjc6A521O/zwtij7BWdDbhLS0hAF2TbMwdDbL7ZOw3oGR3HaiP
	6oZeqVwMYYMS10fdIU0WsN7WvOsN63+HHvxezeZ4v18gF0Pgti1FlouX3As2LAgeUqU
	hzTbRWKYp0WBwBN+1QhO+aMlRnlXd9cdzXE1Gam8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644856232;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/rlLHn8BTl7KqaUV0S+TCmEwsUPHU5WtUxWkW+XEpCU=;
	b=Oc+JO2HaVMEzxP0R0xEEYE3iGhKKriHFdyHiEuvakmb9T35qvb7mVe/m73n+Ky5K
	SnkCpCwN6Wbkf6mwtYBAXmX/xbw44HQAyC5LTUmuIS/C0OybixKrmOj6yGs7akCdpjF
	guoWXjsXDCwqu4aUw+lOp3Yd2g2vmWY5Ef7+geWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9124994-830a40f3-79a9-4165-85ce-d0d35977da57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22d8615912c708034b4f03633ee7a964950146d4dbbf0a12f066020ba73f6cf0
Date: Mon, 14 Feb 2022 16:30:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644856232
