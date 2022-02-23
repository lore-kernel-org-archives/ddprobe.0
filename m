Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A94642
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645613784;
	h=To:Subject:From:Message-Id:Date;
	bh=DSeZLthT7NERY0OWS8ioW5hG1whysPFftA9TZfbvrJI=;
	b=ELq3MmEPEjdniwTd9DBCgeomjm6odHgGl5hQ35GWh5vawZRBmJw9OjT8N7Tgrn2r
	J4zdm53l7BOshkH4B7Xlr2V8IjLDBmjR4Redfp/DPEwEN410Xpb2sooaCT+ne1CYgHJ
	9d3UiG+1RyDflk1ztG7rjdIBhgQFvUIvmmEaJFyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645613784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DSeZLthT7NERY0OWS8ioW5hG1whysPFftA9TZfbvrJI=;
	b=Ure1qYih0nz80r9P4PWNiJnucXldQCA4jG7gponsrn7PdQCkOi1l9r23J33sAiy8
	saM4KI7Pkboy/LNiGaFIlCqf1K+qrGLY3apJoOdUOZu79avOR0UdFPfN3h7uwUIpp0L
	7ap5PkTHldd5pVs7X5SPu6R8h11EaN2ikm8WWy/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26399ece-86210947-8f51-4fe1-8ff6-18c6b0d127ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2685f84759737df7dd896937a09ddee17895025909356a255d01e0a860a1f18
Date: Wed, 23 Feb 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645613784
