Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659451852;
	h=To:Subject:From:Message-Id:Date;
	bh=VZzskIq35Uaza54G9PfN5sVkU9mijFdlVaSzaOmAHBc=;
	b=WGHZEcu/RGNXyyaes8jimzJSmgYGOszYTBIjcjqOeHMdz3t83QHMhNR7ILFxuZAb
	9zl8WntmajvrraxEj+2T3omhj5Mde54pTiflKh1ffxBkJ4cg8/gwC5QEFcNwSfP5JiJ
	cIvf/zWArCCJf8WhDU50wdhFUgBZDOX35gx1ZLNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659451852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VZzskIq35Uaza54G9PfN5sVkU9mijFdlVaSzaOmAHBc=;
	b=HMQ46Qt2ByeYDN1qeJK4T3cKl3I4JskvhjGf4dIH/5lTM0scbHVHkebYkKLFazqa
	4h5BjS464OdtexGRqjBt1ZHDIRJ6vbj9s6wQGOOzkoQOeFZNgHQI7aBP/WQPYfIMlox
	ESmr9tKfVd4Bq9dhWiGHOVdxDr64N2nmkDjONNDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f09c72e-8b12cc5e-9e6c-48b6-a6dd-40244c1b395c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 358c147c5e999347727a5c0062aa71efaacdd1d79b50faed384511b0ead6b06f
Date: Tue, 2 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659451852
