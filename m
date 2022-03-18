Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5904C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647614784;
	h=To:Subject:From:Message-Id:Date;
	bh=VrQbkuGcWj2Z5vjmqM06J0CyaLN4VRvSDqXzJNyUj8E=;
	b=HPkZrIGp2AJgaWY0miorFDV+/QydYdo8nJZHLmqHQIXFyiwkuviLZlBhTIE3TBsr
	CPCovZGQKDNQOJDbOmflSC6NXOC1xYNtev+irmBCRSKhcLih7y9glRaAizl+oJJ5iO2
	OaDB+DNTkZXN9fYoe9HIC1J6IkNtdF+bD1zDloJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647614784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VrQbkuGcWj2Z5vjmqM06J0CyaLN4VRvSDqXzJNyUj8E=;
	b=GDGT6oMTFPTt0+1BpIDI1BS7ipiarHg3Z4bLI9qW8PSa99aZGg+b/e2FcEywBpug
	nD0dg52jS7LSKm6Zr//Zf3AbkE0npq3Qc0akp5B23QBF4hB7+GddHq7WUsLmF90SQzo
	iPZth0x5Lc8/JII03GFwKnfc3y+VmaiY+iw2jCdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d7e7516-6562c914-553e-4177-8f3a-3708b5b1942b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3a86de18643959efe005ce509640c24ff248fa61dfbfa180b7af7c86f5d9a92
Date: Fri, 18 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647614784
