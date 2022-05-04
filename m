Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087EC2F3A
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 20:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651697818;
	h=To:Subject:From:Message-Id:Date;
	bh=wxyHebia11tx15nwEIeOObdsVUfzJfmJV+ONz4Gb+/s=;
	b=mnp65RiuhHV23zFBGs0l796gCpcZkPUfA5i/6jfZYobUMDiNtQosf2oiPhnXkOMI
	H4hj/1THyZC3613uZgEnYhJJ8X2HI9ARftv6fhA0hKeR93MO3xwUzRMcb6Rc+dXWhOZ
	5xi0gCYi1b/KelHI69tkQA9MKu4s05JR7fh0eO3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651697818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wxyHebia11tx15nwEIeOObdsVUfzJfmJV+ONz4Gb+/s=;
	b=ipmpmjT+WMAUgmAXRsaYNUjyx0fsJ5QdOxywAUN+fyyoWzmAcIf0H0lvLPBhJAML
	T1Hk+Y5LqAHgKdyqjp90BwktPxRUrmWB4z6OFZ3TL68aJNrCq9fpfDU02XhszVQTUp7
	tG9mjC2FrVcF6Dnb499i0UHClMoQ30N3FTfPbneM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018090dc9ac4-1c679480-f1cb-4650-bf91-946e63dd8926-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c362e4ed8dbd5932e382f7498cc2a151f6ceb726ce3336073c9124def5bff76d
Date: Wed, 4 May 2022 20:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651697818
