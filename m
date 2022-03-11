Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89446258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647039985;
	h=To:Subject:From:Message-Id:Date;
	bh=IjNkrEtNpomfZtxiK7BFQhqtlHxvR3+3kc+XIAOkl8g=;
	b=RRk+NHw0b5Lw4rWXkphDhqceazUkr6SyK7TmUxQ58xvBP9VsCEhxh4Qhr/sPAA1a
	kUOaOYJN266WE93qi549yaEs1AGtpPffqVJ/yB2RPfbVFuM+hiOLkH84bOnOMTazUb3
	krLRmAW+gl89VhWklFBbUw/IKajbjuxI20lSSG7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647039985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IjNkrEtNpomfZtxiK7BFQhqtlHxvR3+3kc+XIAOkl8g=;
	b=WubDFT0LV068OHiO4wbeEkeyRu74iIHXMsMWlYLOIlHCZ6MEp4icRmSSqvTnC1RE
	w9cZwbyC83kUU+zOj0m0vplWffTXgwl3Rp44HM4LwlI1//O5mtyWs+YaUXzxzV4puXW
	krgCuXcQOmbr+Gk2kp6DxwNG1mb7/Y8yxmpyX0vw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b3bb50e-d745e70f-5598-480d-a637-576d8cfef3ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad108c76173b503be8133ee21b877039bf5208c9e33203efd415a87544bd0fa
Date: Fri, 11 Mar 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647039984
