Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F2A7C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645857984;
	h=To:Subject:From:Message-Id:Date;
	bh=m9vHk1mZBB3Eiv6B41QuKPMpHFHofj50foxcMhPtQao=;
	b=iCh8EGsSVZtKg2sU+53DxQYv6Yhxf/Qpgq6qVLUjecoi0NsEtQV6xO1fZ63/YI47
	7gWhu+/+rvrB3LekcciifJnx0DhL+59DcxmxYypTVH9tOY/5wHdXa0xv7qe8DyH7N+v
	G8kIBnqsOmDpPfpi5znl49T+7K9a9GnxlJy8+YZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645857984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m9vHk1mZBB3Eiv6B41QuKPMpHFHofj50foxcMhPtQao=;
	b=H7Q30DksuhxPqXCN2NQs9NF20APbCWXCXwsn5NLBAotJZ6t2xdMlsD9EAp3D/IT+
	DWTXn7L5i5a59VwqZL0Z4FTN5bn1A1cXLtKuRNVwWoa34ni1MFfrJ3LSg0zm8hGjdOc
	QIAYTFRn2Lw/9cM6YERhyog9PItMklXHZM5fc/Io=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34c7d0db-dcd0631a-8e63-48f4-bdc8-c854f38588b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ab0fdbe5c4903858e6ed93dd23fa9d443594a011ccf1c27aadf0241286f7c1f
Date: Sat, 26 Feb 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645857984
