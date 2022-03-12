Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450FB4296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647091884;
	h=To:Subject:From:Message-Id:Date;
	bh=ZZjPYL/dTmy9pz3nbFCISZIU5jYmd+n3SNsBOL/VYrQ=;
	b=UJ7gCA3lKoS4oV5MJCf1y1E5WDyGxtWTiDoe/5hDNwBQnqEWV0G+AqJzt19G+Cir
	MwRFbn2j1nGCZrRpy6+aW2Siikz6M/S82xg2cjKH/qw+mT+d16Ek4noS3EWj0RDE9co
	Dvs7yVBAN5eaa+xKuqy6cFKaxic0HYz4tTRWu/2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647091884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZZjPYL/dTmy9pz3nbFCISZIU5jYmd+n3SNsBOL/VYrQ=;
	b=RglWac30ZglqiwiowY8jAmWgbS3iwZpel5sW+5JwU81LjXimSX2sl1wv9IVfR7F/
	Z++AaaRDLTMPU6Q+oAWOSMdixp4Mg7saRTJSdvoA+OZur6f/qyi39S7IW3TDtonrbUP
	+6vyhwlAyLTAEXiPu4T4sti5N9fPEkjN1E32D3fc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e53a2dc-a3bb4832-e684-4f47-b6e0-9b12e374693c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c93e9b30fe2ccf9d71637d704dc8f7e95648f60156ab8b066e344ec7dd5459e2
Date: Sat, 12 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647091884
