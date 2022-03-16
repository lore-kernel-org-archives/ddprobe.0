Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BAC468C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647390685;
	h=To:Subject:From:Message-Id:Date;
	bh=TFfYLNAQSJLf9c2gHAuAaJefravQM18qTkG58xdmjsE=;
	b=ZAZBUYwl5E/kaHDoaZLzJ2OJeis7VLpDbkfVZjSMzdDZrUY+n3X6hxm6Qd93kjOt
	wBLWc0+eCRSJ+IgTseM4s0V2aeLRT8wA4NNhpzUeTZyxlZkQ4DtpcvYZnX0sg8tmbTR
	h5KaC8GQG9QPsRBUcZhmZQO6zZvsbxmFTGgpPsR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647390685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TFfYLNAQSJLf9c2gHAuAaJefravQM18qTkG58xdmjsE=;
	b=UEeArRIeZeWXO9qRpFFvZ1FizAcCEGBNV9AOl5ttz+7OUUi7SUZewLkoNSLHXa93
	59o3Mqp/gmsBrFCbx2UOOBINM4HBHAqvofWo2ZHbTMj0aYfd6un/VfxwZ2mtNHyILdC
	6bOJdV9KmNkwO8d2O04+Z7rvbtNLtlFfLhhYkK6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9022f67a-04093b6d-84ce-4888-9e86-fd41759fe7ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d52837dbdcc38c7b2622d3465fd27d8247ecb7a023f4eb572ea082afde8db785
Date: Wed, 16 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647390684
