Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E3C7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656473212;
	h=To:Subject:From:Message-Id:Date;
	bh=+gzfidYp/ml9HTjtRz8gmGzl3/KAvMuY381CywM8jTs=;
	b=H19j0zAeeEj/bFVPBCdK/5I7nmDVBh/zemT6/9TtzmDw5mhUlISwmTc86KY4A1CY
	VImzH27aimUb1pL8SSNZhECOpQG5pFJkeahB4d4hdQDecZ4pTReCX+JTDAwAFvpIf8U
	v9n/LgoSQI7mwnBgkuuAXN9bXW9jIolhkC0wRNHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656473212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gzfidYp/ml9HTjtRz8gmGzl3/KAvMuY381CywM8jTs=;
	b=T2WUua/X29twxl5rJu8fm31/JXytoC3tUY9OLWOMIbnEcnt1XiWCISgUHBuIIXMj
	xSR42X7yn807+JkPU45HmlOgpFznSulmIfhiwnj7zpeesUShZyhsEHkxbpD5DRiETiH
	azKT1qRtN3upWOIEAtw/4VKjrJZQxW+m7BL8H+kU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad7f557b-c77bbabf-71d0-415a-b0cc-a0cbabfa5d9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22b64ae0657ef76a15b84ec9cac4ce554b8dbccb9d9424c444f8c92b7db2b9f4
Date: Wed, 29 Jun 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656473212
