Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946947C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646835384;
	h=To:Subject:From:Message-Id:Date;
	bh=ModO6lFKpR94lSWwxJc4MD1IW+GBT5+GzIAl1Sn/M3A=;
	b=mUvSVLWMFK4aS7qr5QnNEkUz4XFfyVVY/wbrcxIQzBOTmsmTFv8aECPiOOjslIQ5
	rZKeVShQOrkRqyeGnx0C1FFjiBtYT+gjjNX3guOFozj/zGB4UbhICrO2eKCRejInOyE
	Nehh2Ilv+JxajfgDTA5uMLn2P3lyjqXDt4D1EeDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646835384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ModO6lFKpR94lSWwxJc4MD1IW+GBT5+GzIAl1Sn/M3A=;
	b=itAgIjrkppFls5VQ3dAHKtW+GAtyPty0AD+6+YmZx6XVCzzHYEZLUZM4XT0k2aZ/
	vroq5i0RRrYGqVz4gHBWjTWPLpe9B3eLA+zI3pf/95u1FcGma/rQYvqQSI3A7X9mv63
	GMRUN3Oooq9T6Z1NcPO4ltEhY29LtN+qj6YrqByc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f09c1b3-8cf34a95-a397-4039-b0b2-92270d011af5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e16ed95cc2c8ceae90e971ea560b1f03bf0e7dfcf1c9eda015ee04c199728014
Date: Wed, 9 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646835384
