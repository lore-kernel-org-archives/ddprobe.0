Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8A42F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657019212;
	h=To:Subject:From:Message-Id:Date;
	bh=/zqGVzyqjn2MjrBleQnQ513psqQUm7N0swjIo1eyN0s=;
	b=HnHJJ1Pfvcu6bJd/i9Gy3AMabS/uDsdz0R0rVbXbW0ToBCJd09y6XyxwsZoHmnIh
	dfJljluPzRmaKwav8F/d6Xx0UnlAu4tRT/LB81ZRy5RiXYaUyNDNKaPT3iux6VAyHq9
	dI0eyRwZhpy2scwX0rePsaObRRkt/AAXYohvxwM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657019212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/zqGVzyqjn2MjrBleQnQ513psqQUm7N0swjIo1eyN0s=;
	b=coazqTaSRXsr0k1HkcBzS7kDbJB6LUXFB3q/avk974kX6BPovBdoGwxQW2xemyNa
	8wSfEodd+BPF/cVyTPPGW1ngbEBez5OjB+peNLma2dvtG26NzMIFQLbNA2UE60ZlSEU
	GMsj/6JXPCz/i4+cQIvEjARsTimihxnII1yF1TQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce0aa1ef-54ff8df7-a5cf-44af-a79c-09f88cad86e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a55105b0f3038284d1aa55c8f906415491b647a5a5d1328a79210d97f308fc91
Date: Tue, 5 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657019212
