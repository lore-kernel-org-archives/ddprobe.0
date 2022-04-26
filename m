Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331EA33C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 22:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651010638;
	h=To:Subject:From:Message-Id:Date;
	bh=jY6GFjhGN8kS2KSLkmGz/L0I2LTUSYPf87+WNryhCHc=;
	b=eGpxEd3fKRRdla9X+FxwkXtJIt1rAxrbUazcT+sCu6VSKlmDSp74c02WMXckbgYo
	aOsjU7k/Nf7lhgFk8iuFFnkfTirZwo/5VYDlus7AyJqiyvj3KjGg5fXy5Ivtu8CpFHK
	NR22e4k9efo6owv6r+ix+MIikyDnBbEpUFZiN/Gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651010638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jY6GFjhGN8kS2KSLkmGz/L0I2LTUSYPf87+WNryhCHc=;
	b=in5/tUqDjfOoNe0YPkgejrIkceUejgBJPb9BDseYTfs8mgV8kWN5bs5HNQ7zR0zF
	Ve5VeoAAO3YIkAktj0Q/BHF1nb/L2AbIiPt9zR5oZSdeIka3eeUJAhHbiKIQF14dHXy
	gMdGFuMEhrZ2cLkzsqS4LVPfe6UiF7Vk/5sL9CpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067e7125f-f6b8526a-b822-486e-b7e8-c4255b8c8a31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ed6ea99f5c2aeedcc787e992a457a007526906117177a1ec72b37ba2fe7e487
Date: Tue, 26 Apr 2022 22:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651010638
