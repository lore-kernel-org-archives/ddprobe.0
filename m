Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C66367
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 02:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649385238;
	h=To:Subject:From:Message-Id:Date;
	bh=mFMP+c/pLTVs5yiVVqSH8mqTYaBPF8JjRc6u2FfqFG8=;
	b=evMDom+HWOG2rVRLZE696KBhO8Ok0jYOnIC7r8YOPGTJqki7dd7Ux3XEHfmOSMM7
	spFgnM8YDYxCgwoz6tsqIXNDOBUlX+30SfmnlESFoV+CYSE6o41d6TZUuib5WkXhpT8
	DkExWpD2iBctdipCP3ncs2Tp0jlUvAH2ak5RwXaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649385238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mFMP+c/pLTVs5yiVVqSH8mqTYaBPF8JjRc6u2FfqFG8=;
	b=hfpPfg2hq4cBsTBfZxgYwAsU+1x02cOEHmHgcTDzH0pizN/5BtXDWe0P01z78cf7
	yKrhIBQPUxPobo9XE+XU/AViBeMXnrGx+jlQDvPIfhU+2gjjEiR8uofBlsRb5AM4mot
	/J3Sef0ex5PYSDNMBXFr6o1Zx5vqAVa6TzLibS9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018007056ef2-dd9d09f3-e497-44c6-a5ae-2470bf270115-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d47e2be660950be431c9eb9e0e64669826982146e9c0da50cbe89875e23e908e
Date: Fri, 8 Apr 2022 02:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649385238
