Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267387F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659447052;
	h=To:Subject:From:Message-Id:Date;
	bh=8uIYn4WUyQnQj3OoZxBJlQVc8peJe/93isU5lJUEEAI=;
	b=lD81RErQ7lyJG6KcTMR6I9ABrRbkph/FrC/Kgz84I6yM3pC5n8oDEtnIymiQyFPc
	12Bh+UDk+uAm4VPkQj1pzjjN+O//jKHpBg5agPH6pPM5SPwRtD+9QBQIc/Jlo1QvLJK
	/w5dPrKrZibRTs/DVSX1Zt5CFKnO1TdzRKDJmGCE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659447052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8uIYn4WUyQnQj3OoZxBJlQVc8peJe/93isU5lJUEEAI=;
	b=QV3bE7cIIEcGuMXf5Y1H3LmBYJ6ifAi/530hz7bfzQ91UI7lDvoyXQpnJ39QrQ50
	Xl3mqCRU+zR1Di4bCyOHvwSk0onKl/Qvpt8xTRU7/HOdGwQmyjefB2tHmyM7R58YCgD
	HkbfuYLzXamxSgJ3CxCNTeVk2UPT7RAhdvinc9pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ec08909-1baf2a48-f212-4e1b-87be-8ffd826eb2cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44a51dba6ebbd980c5ea2a75cdfdeea439f485f4df383d127ad108e1f88eb9e7
Date: Tue, 2 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659447052
