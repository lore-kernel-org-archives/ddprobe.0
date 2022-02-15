Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B921376
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644916584;
	h=To:Subject:From:Message-Id:Date;
	bh=NDJExdJKgZhIoDigJ2KTVIwp2CFhwAgZ1jTii9kbAY8=;
	b=IW/DVtVHHNeGBdF6Zdc6Tr2q4NfWfmABBAkNuObj/G1JsTC+x62P7hAYF3QSqmo6
	QMz30Gge36qm8Oq6ts6/9CjfSnirjeTNj7OlGZlv6A7DxTGUg4AP/kxIzS7RPU+6pNm
	ZYHXYcRfsWgmnFAin+1rwsCclWD9tl+wG3dinDWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644916584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NDJExdJKgZhIoDigJ2KTVIwp2CFhwAgZ1jTii9kbAY8=;
	b=WwYStxVEAz9SYR11b5i5nvf82pchZ0R5wQ6JejrpEZaMG4xqjnVsjRyInhdAgYN5
	RwG5wA8y7rBl/QGX6HeSdRGOThSYY8LdmTOrS2nP9IKFiGKbJ6DbbhBHety/QwZnQ9t
	iELcASDWnb/NppEZQ19U37By2kYQCGMtwhwQT/Qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efcab3123-d73a98a4-71de-4076-b5de-224b3e8020ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 688991cc38f38b89c031a29dba0b4d2f94f17a2a256d13aa7f8a5011c99e4249
Date: Tue, 15 Feb 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644916584
