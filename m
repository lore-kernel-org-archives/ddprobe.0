Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A7CA52
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 05:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651901818;
	h=To:Subject:From:Message-Id:Date;
	bh=NWSx4vyKCMFRPOkZ1KmIdmf8DeecmGXNaGb2vg1N2z8=;
	b=XQBgbfIVn9AlRqOBlqwLVC375If70zOC5kC1H+/zmCCCUlFn5E6DN3zvRQNuLR19
	/4kDv1Zy5K6fNSC2iAioANBiFdgElt1jZoEv8DMkrHEfCGIoVaa75WFw4rCuGuRa/iF
	I/3PKpP3ImuZmp2loEaY8bBzy6z7FaqZ6r/oHyFw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651901818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWSx4vyKCMFRPOkZ1KmIdmf8DeecmGXNaGb2vg1N2z8=;
	b=ZFpNvNQHzfkdsnjOMbdfmtLGiuNGzwpEyZ41Hquls3EvHcJIIxmotX/U5bsmgHCW
	nJv9vD+85s8eC1ujqjMRrjx+REZuqWs+40kUmtjxfUbya/BI+lYGii46GG4YHLhqjju
	b8h95EbsjYOjqLhMqrIt/3f4pF1ttNYsGWXLs2v4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d0565e9-314e810a-997d-48e7-83b0-769bf9675238-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3db02ca8426e536cfbf9d79e45bd3db509b844ec8c0d14e781b4c3d734a632da
Date: Sat, 7 May 2022 05:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651901818
