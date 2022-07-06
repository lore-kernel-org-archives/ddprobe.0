Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685F2F3A
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657106212;
	h=To:Subject:From:Message-Id:Date;
	bh=HHrFkQgC2pgFIXV3UbTX48+zJWO8fD5UX17snROaR2w=;
	b=lC1oSyOlReoBImy9Aw+sgIqkxNtSWdDMM3GCMj8zglcbKyvWOpB8tbmYC9G8WZMR
	ccf7No1pI3xjF2rHOPCV2GQl9WC75Qns3fsNmhq/K45B5bJnjG350wn1/VGthRxRyoj
	NilVrahZxakKG+2gUFOxQVcnGVCow6XfIG3n+xvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657106212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HHrFkQgC2pgFIXV3UbTX48+zJWO8fD5UX17snROaR2w=;
	b=cxS19rT/DiHH50i5vasDXySWkgWBEA3mUZoS3wDNMwFY44weICiMUu3yDKJklZ0F
	qLFP5bg8y2xv9Fgsjd0LUE7s8gJzCaO3KmTX71Eb6YEAAZG3AU8LLDfewwc2Iw8d6ZE
	SsIYTJKMEKB/cfl6W61xs3A3NE4/uHF8ZAFy2z1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d33a25bc-e7095f21-8a0b-4b81-9d58-0c236ff2bd92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9af6c582b43380751ed4b7010e5fbc8502722b32046c240646847ffbbb547bc7
Date: Wed, 6 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657106212
