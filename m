Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604BB7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660555252;
	h=To:Subject:From:Message-Id:Date;
	bh=EmiGbvdQx5DCefKdjXTnw3nZr/Js1mzzAOXDK3MolAc=;
	b=f440Kup55Fjkj5DzP733sie+nQefkUBz/GQo2PjXwOADwKXD++gXZ4ezfIL0eRGH
	cd4PN/rJZkbNGdEuVNVGRkkdnRJQLAM7TkKcfshEVTsC4n9YWEenGx3z6fpHbtThK+X
	JLQ3csGgV/GFPqSkrVxXlY814ujDV+a7xrD5OvE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660555252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EmiGbvdQx5DCefKdjXTnw3nZr/Js1mzzAOXDK3MolAc=;
	b=W3l55PVv3BfZQP/IZBSc6TQQUVOO3Ek7YBOFVt0SbrJQVJThK5XebDIQnlt1+2rD
	SUdjjL0S1Iz3u0ApvA+u5AV9Lq7Okzn4aYutMzLpgAcj/B532bX//3tt0fwM/s9l2PH
	nilOJKCB2KQE9ehpi8iWO1L/Z7VIHl7IkHIq6DhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0ce5392-2aa9d15a-2719-4d88-adb7-2432df0a87ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0d846b8a3def720615337651df520bdcf21b1256bbd948c8c51cec3ccb5af04
Date: Mon, 15 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660555252
