Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9F610EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 08:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651222018;
	h=To:Subject:From:Message-Id:Date;
	bh=HZwZOqC9KU7LHPzG+FO+sYa3gTKDo9jh2ZwnMDZj580=;
	b=Za+REEdziaOLSDN5viUvVfsIZUJukrHPnUvckw8ke1tS4WlZAveDh7YGLx9mtOMq
	9n8xVi1tW3cUiynjokONULgJKAyOG0onzQay/Rhg+hY0sxzJPxWAJGsvvAQ7Pbjwxl+
	hpt1c5xv1gVo8b5Ipf2TqRsOkpHpojKM5nvauxGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651222018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HZwZOqC9KU7LHPzG+FO+sYa3gTKDo9jh2ZwnMDZj580=;
	b=UbSt6ZUroCdkfM5OzE58N783yn7POnzjjJLH+LBmKwbjF0WThn25VeHL81AK0R0y
	aIaKPGBK/K6EeSFYaG6XBQ5iduZMNGq69aCV5raVSWTybo2alE2LEzGvhJCqw1EBPlg
	fqvmC3EkNsXUM4KLHpIXKWFPjZQj/N1fvfcaFTls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180748078cc-675ae11e-a5a4-416c-bd47-5c627b511cb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed1c18daa5bbdb86bfbe7df87d0edf78335fbb89392866380dfe394fc855445b
Date: Fri, 29 Apr 2022 08:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651222018
