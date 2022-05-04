Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7F42101
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 08:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651652818;
	h=To:Subject:From:Message-Id:Date;
	bh=ZgGhny/IHKzKYcit6lEV8/5+8pb+ytH0zyAf9YDUzAY=;
	b=g6bxTYUJjhXQ1hEFhm2gPzfJjWtXFsNhb6BELksWmqA4btZoH/bZqh/1YOlSLtTZ
	XPrdn55hsz9XiMQutGW3jCjlfsTeJe2rsx4gD6rr8TyXLxzAbLTjciHI59kxKO/vb2N
	lqQxozl2wNV0lHoAl/4JXnmJyNEvm7v1k8jw37ko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651652818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZgGhny/IHKzKYcit6lEV8/5+8pb+ytH0zyAf9YDUzAY=;
	b=JDvoBsrTr5m4K/fEpHb9OsjFjUlKa3lrRJ2kZoQE+rt5iRTVfqzswdnUAv+Lxykw
	8a5ju1IVmYhChKaMR+2zhgkhncOOhAn05cz1qfmx73ht4b0cedHuKgIqnVfL1gcdj/Q
	ujb2rhK5jjwk9lAZWd0ajt1QeZ5VUJs9LvGRO5sA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808e2df546-c09038de-7c44-4e86-85e7-e80e66f23062-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 654a6353916e4830edd21f388dd3da01c5f9d36d97864e4dd948aabaa067ba47
Date: Wed, 4 May 2022 08:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651652818
