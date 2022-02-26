Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6C47C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645862784;
	h=To:Subject:From:Message-Id:Date;
	bh=+3NTkwWSy7tr+V1Ozl49l5G0kY/J2QHH3ss2E6nVhgw=;
	b=LdGDpY3goCXZbq3xyqexSnZad91TGKsSqDuIdBUIJxhNkD4vPO7vhEV6eVg4HEaB
	25nXmNAN6Iv1P89gcOCnKD5xhNGpO88YKFQgx5n0ZlglPj9wno6fO1w5MK8bmoqKjah
	7A0vcw3qUOx/3WlrCDSLfgd0Q862/6nT65t8doAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645862784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+3NTkwWSy7tr+V1Ozl49l5G0kY/J2QHH3ss2E6nVhgw=;
	b=NeoAtZJKq5M7kSIGGntvnpQeYEr+VsgGKCpJjFdgwQwYvhZhZgFENXg3rp9+PxU/
	vYy+BqLQcivCu/K1XBVC1MICBsobFQ7rQpcH5Ek2ipRd4Kcg4PUwRz3J09RFn8YPrz5
	jlvEq9DPEerM3E5nE9X4q+PwOqM/iCMk+g0SvVZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35110f01-ab5c3667-52ad-4c14-9019-0e894f2a46b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db1a957f0cde6f5509595519c9ba8092bf8dff7cbd8cceb3430424ed6b9004be
Date: Sat, 26 Feb 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645862784
