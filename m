Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F1A18D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 15:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653922919;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7q+DSgYNGshicad2gy63a34KRLqkJ9kT9lNDswtRoY=;
	b=jEdvWdMLeWPZG/zoJk42lst0PeohWpwgXnZR7yHU0CrkkvfSEXiofGwlp4cOI4eZ
	95ImOaUHfvFUUcSpOJRfE203sUdphgEkV35OAYARkA+MKqK8wwpHxKReaL8ZaCYFhOB
	zJqtjmf9oNwUrLel9NbN+xMOuy9SyoRVJYCbNPqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653922919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7q+DSgYNGshicad2gy63a34KRLqkJ9kT9lNDswtRoY=;
	b=DVmpmQJ0Cw3uQvgkMH7taqyy6m/69rYhZV8TXvzECcszfvdRBJ1UAm6Spu54CFl2
	HjYGGAMFO/35R9ghEMOZEXbk8B3vIrwKHl5J9Nn326ZlxHzqG6RYYajg/tgbchkKQ2Y
	cXYliaGu8Au4yhVkGeKY/Net/BUMaP3lk8ePZfMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181157cf352-ab18fcc5-1b3b-46d3-99be-991054e61c64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41ed8757b9d732c37dee5574ec5862316eb7c1f8c9c42d84f6594c5f5351be7f
Date: Mon, 30 May 2022 15:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653922919
