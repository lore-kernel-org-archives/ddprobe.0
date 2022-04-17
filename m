Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CD0368
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 01:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650160618;
	h=To:Subject:From:Message-Id:Date;
	bh=mOM9/+wUwg5ptiURdGl+VKLG+ih8hlzliqxX6zGB9GQ=;
	b=Q9QF743562yeWhpaA0ISg5hq/+5Ahi2RaJNk8+AFr5/VMUfZoZCjv3BTAsJ0N2xW
	o6h20sFXqsN4gQYSZLtr8VDO7DxoTm6LTlWzyuL04Ox0j4BqJ4gVkQoEFQBvv1kNZ9u
	GycEb23WdE8ApdzTH/qFyou1U7NXaN+Ca9edO4Qk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650160618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mOM9/+wUwg5ptiURdGl+VKLG+ih8hlzliqxX6zGB9GQ=;
	b=AuaydUO41K9twXLiKdn9MY8n908qTr5btTanFGI3Kd5pDWfRzrRgmaWyQLrVzxut
	HsRpCY9S1PeIlnXgf6cd2bb1/pK9zV1aFXjcPbLHN1TRmefynT6BqjvmtIusNjTgKHb
	AS5OgAa2pkAJlOUXQp4B8+VwVHGFMo2DF45tNbE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180353ccb60-aea34186-e62f-452e-af35-bf1911ec2f46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df8e6070cf4631c1a3a9f127ffeb6c30022eacbe853c1c3c5516a7345628a29
Date: Sun, 17 Apr 2022 01:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650160618
