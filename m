Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFF41B68
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647267985;
	h=To:Subject:From:Message-Id:Date;
	bh=9aD/0KBHFdlTRxgi468PPjATp9AB1YKiKEu/dYo3gvM=;
	b=WuNduYX2Yynfegs9ztAK5T5gbavy8e61wyW636mzI43UXxzJnHTC/YC0rq4KETBM
	Pgu5mSFojWuUfKTVL+lFp4s3dLOe2yZwCpKKUB4pDNQhkyZCf6gulprW4s59FS6LMdZ
	IFDfhdYh/D7A2w/Xb9yhTBcQGcmRbW8eygbXCmFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647267985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9aD/0KBHFdlTRxgi468PPjATp9AB1YKiKEu/dYo3gvM=;
	b=Xp5Up0SIbUPn801BtpAcSWodhGAnMJ7AeA3hYRmDiPS4WGYPEdXvm0QmgYi3McDE
	TjOqrMqFexjQOR/S0yPrgJV6t/XqRZUOv6fBAP3dRtTiNKCzKnYGL35hpMW6SHT8qe9
	k4Z4EZ4UpjOr7wKVOkRp5JDW+qQK5mn/Pi/N595U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88d2b581-17e93c1c-7134-4280-83b7-f49658b1697e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91e771af113dc862a05afe5a5d2950f0b9fd3d4cb1d6bbc3f21fd13f403f57b9
Date: Mon, 14 Mar 2022 14:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647267984
