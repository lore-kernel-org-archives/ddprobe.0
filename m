Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CE21FCD
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 02:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653705659;
	h=To:Subject:From:Message-Id:Date;
	bh=p4HKA+wkLvIMEE8Eth25TraEqrk8X2kKTe5AxePpnco=;
	b=ZgBx+zkGOk+zPJT1UC//gDAipaoMJEBlvq6nU3u1zE6L66bBgHFw+LH2m5m5OaNS
	P9rqMc80CIg5gB8gxEmzqFVGx5TxGx25qitZL0xFWBvMFMLM+Bc2ad58emMCJYYOv86
	dr09kn7EfL12aoHr/EFFyc0a6VTRz5cO4x0xAWJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653705659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p4HKA+wkLvIMEE8Eth25TraEqrk8X2kKTe5AxePpnco=;
	b=XxSTBgdDrHQOJ4oARjKLBOvy2L2lPbYe26S7Bp1EuFP1Vi62w/ZWp7M8qBPSlfGv
	vXDNQHHUwPSim0eFU0F67UbNHIM/JrIbOAjYRpiOWgsZNIG8ufHO9zMSARqQi654Pjj
	2muIhY7+POBdZiMtElz7ly3W37KCTf1OnhV+SmYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810889d380-e17ef54a-4dc9-4a25-83ba-76430db6ad8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc911ef3e0baa8eb6ab30bde2abdd44c39122d121e2f55b68a84e78359dfb2f0
Date: Sat, 28 May 2022 02:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653705659
