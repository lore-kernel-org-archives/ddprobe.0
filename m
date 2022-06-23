Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226B6468C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656022012;
	h=To:Subject:From:Message-Id:Date;
	bh=IyWK3K9ksIKpI3CXGEnEAr53bihpDUtcgj1vKX7ldzE=;
	b=DnTxjH0ykbFxNCuTeU1i0tiTTj/dpRetn/ngV40DF6oWqgWy8cmvnZX3Hrv80DT3
	4UgZ07p1HjfRnCvxddnZfHp4zXLyXTY6pCB2fYQEhucMki0lzzywt44+t8LWcv7MDWr
	m2tH+XnUJv013005r2D5FaA3M7tuaIydr9DU1PJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656022012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IyWK3K9ksIKpI3CXGEnEAr53bihpDUtcgj1vKX7ldzE=;
	b=fuv9nrUhl97b11SqGHDXV+D2UXPd+mcYaUuwc68z/bL5dRGyknnaclXvPwtfXwxh
	3Q00EE9jPgQm3/qDfgSPNCBMq0rjSESnESaVytd2EoSYUyrFgDS/qfW1orWQMbOUKwv
	VJMNi5vMJBiM+0X35DuT4KXLHQwAM+29DN++DlNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181929a91a1-21b17861-752f-48ec-92c0-37522e2a136b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b67ab1154008747c1cf6b655f2a311132888726574a58dc37b8eb026cc566427
Date: Thu, 23 Jun 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656022012
