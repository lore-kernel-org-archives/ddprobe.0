Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659403252;
	h=To:Subject:From:Message-Id:Date;
	bh=9YOZBSJipPR5cIwdWAPfNV5W/sSQRoAy0O/qgrXKz68=;
	b=OF4S8kzlAQYcn/yLguZjO5hIAHzaSRnAxeBrBh1lksQm90ICFQwBB5XM17riRs4b
	WazdgCTiYMQVyOBniWgH38aaBZAXqz6JloWo9QfkGp+ehfGtWxS0tr/EcOoUMN78gOZ
	o0lskd/utp051oNQBtrvEDejMUlYxsegAVR8dhI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659403252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9YOZBSJipPR5cIwdWAPfNV5W/sSQRoAy0O/qgrXKz68=;
	b=ONUS+uKzoLo3Ws0ucqAkE1HkfF011uKihXFxHHtGLs2VQyNUIX5XWih1mPikZIMC
	rGlh2zFCEukMkzfR0dwL/gSTE5litlA6yaxnG+PzPdGAQMgwvGDbL/qvkVDSGAkMBGF
	rRirJAuldedibKH8nGWHY00N7+8EV8FdQJPVLi9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c24337d-2535339f-2254-46d6-8327-bb8b8eaf2961-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6af81c9e899422f413363eb9934b5d1a923aa589f671cd7604a68c195d881b9f
Date: Tue, 2 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659403252
