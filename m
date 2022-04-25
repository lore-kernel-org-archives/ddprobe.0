Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEEC7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 17:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650907018;
	h=To:Subject:From:Message-Id:Date;
	bh=8nX6awCINGoc4JYaeEIzzWYl16SaF0dKI/wkmWWCTgo=;
	b=ToNPwZrwdBwmRY1Yx3gnCu7Uv3KFx0Hjr8WYjmcnkmjUltWPr/Qxogi+WxVebMAz
	1Zfmg95HUYNv94DMHs9Ra/OMkyMhpfA6cNHhDvwKIjlaaiafefEATSVA2xJY50bNefS
	powiaKWfUWCVbFfm0V30UCxH+YU2uOL3xbRuhei8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650907018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8nX6awCINGoc4JYaeEIzzWYl16SaF0dKI/wkmWWCTgo=;
	b=HIwhNnv3lL6ytiiVABxcBZfgxp0l+4Kht8rBx9e+RxkBKAJQrKr3+aBSmErv2mIW
	R7pGMbuKPGKsbHPdHsNu/APzkLBd6MlRGKJR+3Ic1enYKCYksCHOHGq5PD/h/t6KRQJ
	Jp22j9SJ24ljAfRguKhfst8xPLRCKYfwIYAHkxOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018061b9f45b-61b494e6-c76d-424b-a153-0a34e12c7e4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5a56a78bc7a3ec12033a0bb8fddb740951141ba4eaddad2ab5817868c5a5347
Date: Mon, 25 Apr 2022 17:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650907018
