Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E4553A4
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657580212;
	h=To:Subject:From:Message-Id:Date;
	bh=LE0o5kUklffX0OoGrwCY+FdMcP3dXSOT4a17z1bO4gU=;
	b=ah5XxRn0xcdQW746biV6oRj3CflwMrvlylAAHgjivJ2bvJ8Vjzi+zgsIB3xaKe2P
	ettm0lqFTe6am38s39NTPXLozhDZFDUomzDueIMaEMGJ4Lo0baVKyhYgwBSMGpv5wVL
	p1hXfEBqeqHLFkfMFagJBAfTJdopag5AVgS0n1rY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657580212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LE0o5kUklffX0OoGrwCY+FdMcP3dXSOT4a17z1bO4gU=;
	b=df8DdKWzBA0gulhIqYi8AOpwRpckvRdak6tijGY/Rmjav18oRYLujMHvwGH7EGT3
	SOAAA5F4jhtKiDz1pPJVhZcWzRo+fKm2GX03O1PcUH/TxcDzF2OJzPI+0ntjPGDo22h
	BuJn+hzaA325GRFymIKxPdgx6xF+c5qjGoHBha8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef7ad084-1ea56f86-e389-4fb5-93dc-98f5fb753543-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8f6889c84099d61af20ac90a277d5eae146ed7cd805bf272b74efb96359c40f
Date: Mon, 11 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657580212
