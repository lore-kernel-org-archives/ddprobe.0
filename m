Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2025C8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645633285;
	h=To:Subject:From:Message-Id:Date;
	bh=kUozeLom96pYaMwR6wiEf9uCSawef544RAOtvtMOs6I=;
	b=F2dXq54W9cxkTiBBfS/DCQQSnTTe2UHoY3C2s5xQFIhJzl3eHmpsutUvc98JkrOg
	vDqdIJK+aiAYpX2SSL7CC1a77sO4UgJuEfwgjEc4BEJH/77NMpS9z7n9BcO0hBapoWJ
	kJuooXbQBsSOr0EBV4Sa2UugwwJF26dQTTDwUmmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645633285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kUozeLom96pYaMwR6wiEf9uCSawef544RAOtvtMOs6I=;
	b=LVfuptnlIFdPgXPASP8kS+qjSJaeZ+32xi2/9eWbK58P7MBmwbMVlUF674u0nhMe
	vORb4HYDrSG6JErUQiJKXTygZtgnuI3blEpzpftn90tnJ7vVEJls3JRB9F4nZAOE8Ph
	5PASvYsY2IaxGKFDj7zFbB+Abf5L/tBjP4wi8nc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27632ad8-7a80ba00-fa7d-428c-8949-483adb2f5d5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b413fe7ee7a932a21b69823030e8bf19ad592d7a02ba1926777d87ce1a82a788
Date: Wed, 23 Feb 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645633284
