Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22F12917
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 11:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649072878;
	h=To:Subject:From:Message-Id:Date;
	bh=JEXEMk8oozJkA4gYlQE5c+9/l1oiTjH3LMr4kej1IAc=;
	b=f4u3AOtp7ppDwDyeFv21Jentn6WPC0OlhQPaNrvmxMY5APWbpgfN29cP3ruxzwBt
	ipp4ts2gD69SXIYyXF4PQ4+amYGC5U1Cecqt7xjQp9GqYvob0AvQ6KMDvFZ3zDKURVn
	PRH2u3nC9lKUF1v5cam9AeoE9gocd9j2o8e+1cfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649072878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JEXEMk8oozJkA4gYlQE5c+9/l1oiTjH3LMr4kej1IAc=;
	b=AHxVRXLXL9F5xDPjYebK/OFmckO6+a8LiStl+IWR5Kh9MBB5hlLru8CoK31cjYW5
	FN1IhXy5GroTQmKzP5jascPu9hoDugfQ93uwUI9Er8KHHU1ZB3BWRFyQXkgbakBqvQz
	tTw/lkj7rjsgrubYL52BBmshp6P3Lq4NYoAAR/H8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff46732bb-eb6e0bd3-3402-40cc-a75c-a909e131ff4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afc9872a45b7a721ada645b6b6258a6a590ec463e0cf46926fd34628378745ed
Date: Mon, 4 Apr 2022 11:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649072878
