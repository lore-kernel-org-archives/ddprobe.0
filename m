Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF84333D1
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646230584;
	h=To:Subject:From:Message-Id:Date;
	bh=1OvtBRq9eloCr1V/EmJ1Y0pPWQYtEF7BqD7JrzQ0A0k=;
	b=Pr1pb1Mv5Cf3Z9Zj427H7VaZbGRPHP7vvDD2KCYwdmXMLb0MeSr9lcUyIM274jWt
	HUALqWvOq+cBRvxR0pEQOYoL4yBNnk5ulpvOHiNvXAYRxUaRAiBW94xd9fDxxS5ImcA
	bxuYppGgG2pUNE1+lswSpC56SoOYYUVrPhGHYh7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646230584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1OvtBRq9eloCr1V/EmJ1Y0pPWQYtEF7BqD7JrzQ0A0k=;
	b=U9JnqiFaE4vSCO2Hbpc5G27wsRkrWfwVV3iAjupx3PqK2GPkhaNY58OFRSzwOnB9
	V2pnHdgDrcdG20V097PBssRWm5Z5UWYINk85+hI8CJMmzdz8GXAPCb/grw/kJ3NrSSz
	4spBglLWI8UpTONZWdwiHRyxFFz/S47DrOMw4Xnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4afd3db1-3aea1f06-fb69-4b88-94c7-5275d231ed89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8a4a524d1d7380e66567b07c5d6dd57f1cdac0b1b3fac5ee30f06e7566d6a32
Date: Wed, 2 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646230584
