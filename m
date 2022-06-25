Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0619C15A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656124012;
	h=To:Subject:From:Message-Id:Date;
	bh=457k7pgEC9rNWAy8Ulo4SL1g5RVXZlNuauP6Wg19cNI=;
	b=RFcFocb6H/y/Ug54Z0s8+riLGkJcBuN1l2yCRmU7cWOSmR1KvGvpBxQEBOhSBZOW
	WlEbNwN3cL75IKVuNIWBAwT6Z9gAeFnfaRgZjHS2s7ahi8oPaphwPmJpn6qCwq73kCu
	uvd+/hyxI3YLT5xcReV492vTnXaHw6L6vaQZV3As=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656124012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=457k7pgEC9rNWAy8Ulo4SL1g5RVXZlNuauP6Wg19cNI=;
	b=Hts9DD6/Vx2ApUvyplsNycMUXNg9rdR2nVwIO0xcC7k7XufRxvbJykFTgmt8/bbX
	OjwizM3y15ZuaQT+4h4yxBMXdNXhmREHm4ZqHrJGFa9QCpssQUZlncfxFU8t+yQmgTz
	lSeda85fr+UE9gSnaABJz1Q+6u4FiOhFxLJ/Inc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198aef700-088ca8bd-a2b2-480a-8af8-cd4bd7e18941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80968b4f32e19396e0be98b75ed1b607a7159c76837666ac01e12062518a0535
Date: Sat, 25 Jun 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656124012
