Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E297F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 06:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651730938;
	h=To:Subject:From:Message-Id:Date;
	bh=iRh3LKfE9FgMnVx3F7blJkJ88bfkv+i9ZCX7IDA5sH0=;
	b=cQf9gQNrmZyDdrZ2EuBYZM8AxFBfkPUBfLDLV80Zdy/YDXzAYK2mLDmH1Ft8cuh2
	IgM23CHY0H5QxKGzVhOQ4E0xAi90ouVCILGLBDOYMAu4b+mnAgu4dLiyqG20VnTaAQZ
	GfNZ0fs2nV+n/CkvvNsL4H784ee8tpuAfHVQqJwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651730938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iRh3LKfE9FgMnVx3F7blJkJ88bfkv+i9ZCX7IDA5sH0=;
	b=e25Yn3lKG6hxtBl5G3CDQOZlHv6QGysrqh7RRUzZcz35qh56dMn4lvnUD36UExXJ
	HLoVKLGR5ZUKWH1ygVpP7d2V7cOA5lO7ayIcQ/QJtxCfbPGj9j05FHjZwXrpdykfTZZ
	D+vc7sy0gngl1F9mu1/yAmb9oz1+feb44NMK3XBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018092d5f9b6-067ad48e-ba7f-49f3-97fc-38de80ccaca8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ee7bbaf2057421555cbad2543a1f0057cf77c3bbe1369564f27295582b2e191
Date: Thu, 5 May 2022 06:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651730938
