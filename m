Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6493237
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 15:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648393438;
	h=To:Subject:From:Message-Id:Date;
	bh=2b0oVdpjNaN5/OVcz/w+aTE5ohPUZeOAUwztd8L0sCs=;
	b=DZcszBc2icPYICegzXGC+OnB13sGJsjijSppD09fo+8exzsOnbVl45Va5TZrdyCg
	XIkwthPUBIbQHI0Rd+DXzkX8OJJOdJ+qKh6VyTjDY616X0evCBxzHLqV1Qxtp6r4GDQ
	dCICF3IPRFDnltaM5nOXkoNLjg+SWQzvHpAIKB90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648393438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2b0oVdpjNaN5/OVcz/w+aTE5ohPUZeOAUwztd8L0sCs=;
	b=eHDJV0dJ06ybHUARSGnbcRoD29yYFxm5A32I8ft6i3TnMPM5yGU/3FD662QnXoQY
	jV811F5UlSn1Xy+xGAHR7ck27mDewITqKgUfiOMUDIPfnY8fuOvyZWK+lz9zcJVuR8s
	y1SgVnNWS76ORfLSDQgsuzMJnj0YE1ufcm7BBmto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcbe7c438-82181bb0-b75c-4380-8129-7648b9b065b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6de1ee22b9d045ac73730bbc6efa02dbdbb890187de678efb93a3a81161bb741
Date: Sun, 27 Mar 2022 15:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648393438
