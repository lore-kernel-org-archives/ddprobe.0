Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1D42F25
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 17:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652291339;
	h=To:Subject:From:Message-Id:Date;
	bh=RhljPfjkLzUNZNLnxb6MzFm10UrjidMSZA5Q4PoVp+E=;
	b=OXGA0ZuwqLUKyCQLcjFJBcWFuQ1gVOd2wnVRhpznwnf/Vz7ZNkCieq1BLzcXHGQT
	x+wyK0avo+T9qviBI7zBnWdya8JiRJiXP+PXl4DO2PapEUCcNQGsRsS5IKctqEuK3Bx
	8F64gVhtjChU1og2CxR23b/+ZYRqwXMgRJyCuq0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652291339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RhljPfjkLzUNZNLnxb6MzFm10UrjidMSZA5Q4PoVp+E=;
	b=XKDXNnQkUNINq4UyheNK1kdJlHXdxijE23/i3a70G5pg8OMBeFsSz3a5/6/xV+jN
	SGrV4jjgQfuGb75F5SFjzcGDsb73gAZahwiLRtffsP0//OOYepE1htDn/BcSeHoppq6
	fk+e58Nl8TXUvoY1FQfOGaXqCncWDcHSfwE3GzyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b43d03f8-61b213db-58f2-4963-81eb-0d0368d999cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9b621f6268ecc9eeaf65113dec485520022f53cca50591156ecb317f1f267ee
Date: Wed, 11 May 2022 17:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652291339
