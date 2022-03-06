Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED52B7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646552485;
	h=To:Subject:From:Message-Id:Date;
	bh=BB/aWdp/ZWiS9abMPWyXybvhZkqE9/xylbLWMrK3nWk=;
	b=Xi0dZ0UkMUf+sEOYc8zEEZn03oN3q+/ip7zxBZL+jRPyu6w6F4QhFUXDhS3vdfQh
	KyLzePS7yY02QrUGU0lHWngUhpJT+Vd/+dXRveo/DYT3AWkxAsnDEylCiSCsb+QjkK7
	RxRSGiNuUaIJT6ioa6YqCT2O6CoJcNdpFLD2QpTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646552485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BB/aWdp/ZWiS9abMPWyXybvhZkqE9/xylbLWMrK3nWk=;
	b=d26tT1otUyUoUqA7ca8qH00lfq1xKB9C50DkK5/E5XFV71xa9yhfhOaySdaxUFZY
	dfcjIO2z5ptRPqMQP2XgyQKGO+vOs9qsi3fZSY52GFwS+eV4c+tar+DLicfpEHCeYu4
	YG4lDhTzqd75ijWzMcRNMDWJEq5PjTaBszsNZOJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e2d0bc4-40128f05-ff05-4369-837a-643763030b7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cbf5806360dce794f7a49fd3af768c596d16a10423d03215b0cbf762402c7cc
Date: Sun, 6 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646552484
