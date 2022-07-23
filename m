Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201257E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658572612;
	h=To:Subject:From:Message-Id:Date;
	bh=uImfUai27N+cR6ON4QgHrpAfuqZ35u+nGnXRIFC905o=;
	b=CmFRrkqm0DPM0Xr8YReLME375MJdQkUWf4O4LTHFuRhCnTP4PJvHO3BUBcVtjmPz
	IbDmMIIlJYpvirMcfRJi+ARyfL6zg8gvEm/JsaLqQf/IRLvHG+lu7RK/WLjnjkCi3q7
	X63VPCukjlFRMFMCFd6qQHzxH1OwbOc5kf1GBcYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658572612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uImfUai27N+cR6ON4QgHrpAfuqZ35u+nGnXRIFC905o=;
	b=WUcVSlT4TX/NlS5ZbYXLJqEgWCct2Vjfr5AHEQA6FEsjLz6pg8von+QEdmTR5Cj9
	tB15MXVskACYdo5wYCV63sKtpaolGw/v8Th09st5z+9Ni9Clo5BNLc6785FUMejmuym
	fqCCocsxaao1AjJKhNZXcVeoa7gtp9wwlnpgMH3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822aa1a29d-c194ad3c-fac1-4a52-a129-b1a50015f1ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56af99486e623856f34a33b0c6dfcc2e6c7e095d2cb3de8304010fe907cd0e39
Date: Sat, 23 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658572612
