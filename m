Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FF57B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 16:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651075678;
	h=To:Subject:From:Message-Id:Date;
	bh=FwuJDHM5+MIoN1pSXdP9F5Yad+N6JKhlobP5UcBUCFU=;
	b=XUHA0hkG0MZLb0nboDNQpMWWaO+a//MbCf/mbyyIg763uONGHTHtXCxf4xLeItuI
	Lx5nYMrCHheye0jo7Yf/4INsAgqtWuWPoYv50Z3EOQb+UQ3zIJKBJTu+g17K3bKTqz9
	68nGdzB5BkSeG5iYu+qtYm/7kN63loLvqLCX3zds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651075678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FwuJDHM5+MIoN1pSXdP9F5Yad+N6JKhlobP5UcBUCFU=;
	b=dTcaAqDRv0rWwBZBV97mLe/JGZeNN2ke9UxjpRUXfHSXfXHGsFz2TPXuyPMUrRL3
	mPsZXRi1CMQ0AwjDYD7Y3A/TiGcBWxAuRFqrmwYimCSj3vjjgDZkZkEmPmbNtgxH6xS
	nVuiNrUhRXBHhRiFPfxjJS47V1pmwsSAh7FdM5U4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806bc78031-1c8c5faa-9311-46bb-9954-dc518ad9ecc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50d6715e00ecc7293f30b6c2e13183fe3e26bf28de6cc131cc9a26430104c3d9
Date: Wed, 27 Apr 2022 16:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651075678
