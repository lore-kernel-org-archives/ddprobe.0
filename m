Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9021D1B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647331585;
	h=To:Subject:From:Message-Id:Date;
	bh=copfy0lZhYFaOljeguLC02MqbQhiDm6X+V37K8QZxIk=;
	b=MBoexGf92RB8xyTtaICPbNBqMzY7hGUELqtuZdAXB9yVf/Gx9aJc8OEVp6JfnVB4
	RI8hdDyP/qIPCMVlzoaRvEC+gRSYZgp3Ri2q03H1kGDBb8ujVVLTtHJ1X5DGETWoTAz
	VQgGDr+ebhH7ocyZDfZ6FMBsViMemFbypBp2ecfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647331585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=copfy0lZhYFaOljeguLC02MqbQhiDm6X+V37K8QZxIk=;
	b=Uw/LQ+uhqJ9fjMy/eyKOWrwDyA01cKGnBsM3lDro4cvThIsaUxuRqNZxNC79rLNx
	z24st6fmXIdLGGxN4C2zxDj1ljg3e9jWvu2Bkumpp7EBt7FR1e1dwb8zDmPputJrSaU
	Ow3PaZ0HapuMFvtLxM/pXWHGA2m5POpyP7+SZs6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c9d2b24-fd7ab69e-03ff-4dcd-8a77-2a836a5653ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3ceac1acd25f53172b77df3c945514001f56c3bd12eeb088cffeba775f68ff0
Date: Tue, 15 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647331584
