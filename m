Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5227A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 23:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650236758;
	h=To:Subject:From:Message-Id:Date;
	bh=dW7QQY6Yyset6grqgko2kUYbSU4BXYiUV8Ligzqb1bc=;
	b=CjojQv4sdSrkHu+1utrhtwrz6LRiU6mNwdxyRMzpwXZ/vahyKEmwE24ZOxwlpscg
	zaVN/kizAtzEG6/X3a2BCqdSFcwQAdPbFAP9xBKHxANLH+0IKyPWOWk/6qpFyHAOJCF
	Tu5MZn/mkzYjlV8a0Gf56hqGvVfjiaueXdfE+/A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650236758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dW7QQY6Yyset6grqgko2kUYbSU4BXYiUV8Ligzqb1bc=;
	b=kNFe5hXi3JqbP7xUpBPm3p28G4npqS6buRTJ/Q/nDiyoHIKiK94BWpJtoQhA6joo
	/nwBA/RoEQhI/sWowpObVbABNJtOYNOW6ubAxA0nItc1je4o5qOfzl5cnmhcOpGXi5d
	3iyqc/Yih6yQkHfCwBXh3WKUkJrZXYjlS+epxxZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039c698e5-8ddf991c-0d76-4827-8020-0f127520ce48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a8cc1de8153c3189cc44d55f5446cfcde25d538f2da46c692f671bacd4ccd7a
Date: Sun, 17 Apr 2022 23:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650236758
