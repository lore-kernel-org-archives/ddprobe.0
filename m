Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC1D3211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659555053;
	h=To:Subject:From:Message-Id:Date;
	bh=czvGrOGFvPb6RQ49audakPXjFuKWFB7J0pIW+yl1GF0=;
	b=CmOJSEnMKpbduSBlg+a5Cn3bf6UkOMg1HUUomE5jMFQRbKb0SXJ4U+LI2dN8pdgE
	bJH7tnTPUgPkheO6xrrkE/qZxkYvQTKtYrPUp97wFtMBTZ86rE8JGPkB5Yfd+0tHzyo
	o3B31rE8mWROowa2E1U2BAUiRmqWb21OVHLC+uno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659555053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=czvGrOGFvPb6RQ49audakPXjFuKWFB7J0pIW+yl1GF0=;
	b=gW3kt1ZbDdVPuG/swDxxyBJVjIESSaG4BUS7ARL0M77T+OKyrkg7LsRSSRZx+5Eg
	dfDF6IptVd1+HaSeiXUJOcdOq27tVlfJHq6R0JCjbxRcwG/OqLufVvk0sMzmfWf457q
	5YpnEzHrMZm/23xgsiR/c1J0CTiwtUaEPf5br7Gs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265307c18-6d322095-2540-4212-a782-11d4cfbcd979-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94d6160ee9f394262990832230d4acb2b3f711124c6c16497a558de290a0302d
Date: Wed, 3 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659555052
