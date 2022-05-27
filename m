Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A361851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653651959;
	h=To:Subject:From:Message-Id:Date;
	bh=MaxsPIdhjWnALLBYU2NVI1tyjwWiFVQQVCUCCq9abUQ=;
	b=Eh9bt0H9msT1MZCpxXyGzRrZOiT791uCNBzMYhSV3hcrQ0nqLvwhAjYbyo+sn4Wm
	7F7F+r/MdhH4cT2xssHoc6lOFAi8Ec/NeYl4VuX5W90MJBgRKsT88P9N2/pqwI+Zlb2
	I2SlKtVJ+9GTwK73h4zWxlyOalr/juiRFEQBjvNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653651959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MaxsPIdhjWnALLBYU2NVI1tyjwWiFVQQVCUCCq9abUQ=;
	b=N1gQzctvHQreECnHLjYq2TvBW02T3lPhgE3EjxO+rbZoRiRI+jHWqMOvIUQmagWY
	r/UEgjjxX67VGk5qWbRct4pejBxVyahFwIAgWDltnsHglfktgclIK3KkqhjUkdvAnqO
	AsYWwmCZaHmugu5GLsNlwNirCkeZYJ2a+HmiRSqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105566df2-b3d3c934-2b9e-4203-b073-ac75f3da822c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 755a15b46d1aef93b003740e3f782ad79c3cf610ea6f26e9dccdfe5f0aa91fe3
Date: Fri, 27 May 2022 11:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653651959
