Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8326F7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659326452;
	h=To:Subject:From:Message-Id:Date;
	bh=sIVUTZ7iL6j6Uu7dRUKKy8EaaKMTMv2KDDYkoggi5Ew=;
	b=Owm9cP/aW7NLsuNu5xUFnipEGycqXLtJweFNr34RAsi74+9Xzbkbv0pNpVMVqn40
	05RimebXR4K8HfWk1zw9cdbTEv345dHP57xQ4V2ttoFm4B1MoXhc2HDJxfXm2u9eb6i
	HRN/QBYDYXvlueIGptJXNw+UaHKZlAPVHflTeR/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659326452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sIVUTZ7iL6j6Uu7dRUKKy8EaaKMTMv2KDDYkoggi5Ew=;
	b=aCxHLx8PTuJS2sDsJpHkBIVL20K7nQfBm4iyxioHooONcPboRcbh8ixEwFW6HbPr
	OskOvA+HSXnopx6xTZB0Xi2CWPgTCfNIO3kxTcxI9lZi6vZ/zDJqYPYK0cHDE3nSEFv
	jnMXNvkHsW+mAJ2L0pe1f7g1RZzYMJ4WVtV8EZV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257905339-49df62a9-55ce-4cc0-848e-52a626d55c66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35f99d34fe4399d8748653a35f89b92144ebda0f74a66aa71cbbbd8b70e7cc44
Date: Mon, 1 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659326452
