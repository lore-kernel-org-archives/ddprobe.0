Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6502228E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645267284;
	h=To:Subject:From:Message-Id:Date;
	bh=7CL+RP741fpC9GwxW8wC5GbKFXCs8RMxS/l2yyJRg4E=;
	b=cxj6w8eOTHu7bXWfLGqjNsm5t+djYVaWx65IRmrMpecjthmI8DAh12GwOLX5rbX0
	gov1G9a+FIgGNjaP+9Au5ao/mKw9wmc7odYwaCxNlQqnJVaxsDydW+0KynN0u7a0Uql
	Dp23JaqncI0nJCQYqf21hgalTftgidkGdY1rTg9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645267284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7CL+RP741fpC9GwxW8wC5GbKFXCs8RMxS/l2yyJRg4E=;
	b=UTMRymgwROvhKSw+xl7DCe6o6vRJzPosBhH6FAdSW0ExBp2HOxfUsRy/n25aNhns
	22NIt3TNWrWXiHb3jAebU748oVMVmQO0YSkb4A+81xR4q3u0IQoTDpMwReFQYOQljHb
	23lPA6zX7H60GM7DG+jQ5S/kWh3tQIdnDxJUYONk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11927350-3b620368-7dbd-4d7e-8747-61b45c06098f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b99b192a3f610aeacdedf4c28a72de9112007fb56b6661a19780b95cd80be29b
Date: Sat, 19 Feb 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645267284
