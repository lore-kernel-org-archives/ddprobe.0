Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAFA7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 02:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654568759;
	h=To:Subject:From:Message-Id:Date;
	bh=t660LxUhPOH2HDhu5VDOAS73jczniZSEzackvV/RV80=;
	b=BIqcMTCuSzrRxc9dZjAb09UOP7KVIUMs+mHtqIgyuY2UjUW2jA5E2keWDzkBeUZm
	PhdNw1QWWj8zmHKVVhOsKboptoHKM9d5+uBGlyJNsi5a1hKZ8DE2N1QbotEMifG1OOc
	jWdyujqzzjx31okbJSg1LbE77xWB+nCrvO7fe/6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654568759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t660LxUhPOH2HDhu5VDOAS73jczniZSEzackvV/RV80=;
	b=GbDMSF/VElNkx6HHkBd+336V1BZq3MKpBVxCqgOZ/y/l90ifMLyUl1UFn3nzc16I
	NVAlgibvYcap83lE/324rB4MXIK4RA+N91IEX8dZyNIs9tjJxZ4JKkd7wWZh8hqlzOI
	0BRqOKOBl540rdPfHbcIAg3R1EiW6fN7fZCueGLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813bfbafcc-c3d78398-dccd-47ea-8432-27675a7c1a75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa8787c3308297033342c2a78d876721bae0a8ac850fd87d3143432734e1c2ad
Date: Tue, 7 Jun 2022 02:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654568759
