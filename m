Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273C310E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 12:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648904038;
	h=To:Subject:From:Message-Id:Date;
	bh=8leNrmE2t25xSG3gsfHZrdVK0c151QTOeF8W85iYpEk=;
	b=cln5DPNQAZxOv0u2QrHmwq/bpAfZIOA3F0y46liU403yadDlIq2uI4FYj0BNqll/
	cRgJSzof786+gmZnE4BlojdaqEt2Lh/sahnePkoucZHIpiO/chdO2huatS29aXYptus
	EBOAmHL9fMpn0AjrF+xxA3lLvhsicV+uWV0VKxZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648904038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8leNrmE2t25xSG3gsfHZrdVK0c151QTOeF8W85iYpEk=;
	b=kHqoe5bB8K8y1pmvLjUcRxVGlAPny2xIyE3buGZnQYsARUnxWPKcBBDYBKp2KRhZ
	H/gl6tCraO+uTRtLid/ZJrAb4dliO4TqT9QYy5oR+QlarATctH6diqXd9WuDpCcjUlH
	pxjc2ac7ebhCBtN86mOJ3MFRdypozV6PQFaDfdPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fea56e787-c53a09e5-2d14-4633-967a-5273e46cd67a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73f21985b35d57749adaec2934bc14ed9dca28b8e71f51d5d1ad13350932a2a6
Date: Sat, 2 Apr 2022 12:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648904038
