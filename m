Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE36F1852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 08:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651307938;
	h=To:Subject:From:Message-Id:Date;
	bh=+aWmy9z/hIqxqohVX3/ar3fKWk8R97T61+cW38CrnhQ=;
	b=e7Oh2oYTIU1jDRTMzVoGp5Zd3EHnzk39fVXC1kN0bus8e3D4m8GLVmaTw8O/8zcb
	52YXjU5B6SLEX2qh19AznP6+HAExnhE/uGs9ggfomH57Xrr2zGI0b91ZkwXk7COl4xH
	ZRqEHclstZ7aOf6kvzAgLH+o00X1yMDPnoVslf0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651307938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aWmy9z/hIqxqohVX3/ar3fKWk8R97T61+cW38CrnhQ=;
	b=Qbcxr2Ev3SQM1HR8nI4zB3sm0+ECqdbwB9TcU0AWhzEpivTaGtzKAVpd70AcuIEv
	Gj7EnzxzudbwzSxlbIP1QkLH3DKEiJSYG/nMJqq7QO2MQUQNvYHnWXQFV0+BJDF2zK5
	cVCIXxhunVuuKd6eD7+5jR03i7bEOqiYeibaUakY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180799f8225-846fece6-dac1-4706-a6f2-d593291eb05c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5255bdb9441975f44724b4ba8031fb93e5d52f44b4962f6d46a2e234fdc55af
Date: Sat, 30 Apr 2022 08:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651307938
