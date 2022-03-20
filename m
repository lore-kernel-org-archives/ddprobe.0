Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A082572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647764184;
	h=To:Subject:From:Message-Id:Date;
	bh=WHUrIPfZDtlrFDddKoek1udT9AH6pk9dWgGjKWJ7kk4=;
	b=Abaum4/OHkzpACzSEK+o1I4lanp/u/5a0vxM8a33aZyLqDLNhubVAnQYyCzs5hyp
	romMAfdSTQbiGnWVdj2LeQWHf0wD6eRrN/47GOlef72yU+6OoNng/L/phXFapldduQd
	9UvPQq/L2CrcZ8dAeVZn/BRqZ1op5ATjZdlwYFVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647764184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WHUrIPfZDtlrFDddKoek1udT9AH6pk9dWgGjKWJ7kk4=;
	b=Qpk7nqlyStu0NSwgDiod4nmz21ol3+TIesGwRkLavu7hl1SrQYgPIkMEPSWDdUFr
	/lQq+y/yK4P6OFfqL4V/70NBAx4/4D7hM+DYbO0Er871m090RFMxkGZUL9/lv/GXJyt
	B/kN6vaErWe4GJ4qSYv1X0rQn8TvyF7B+NcL043c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6661ebb-40ca2b9d-3027-4e1a-8c27-2b1cb632e477-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab97a60b6ec832c1df32d45f3b75b7202fec9032621bd73799dd866f33fb4482
Date: Sun, 20 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647764184
