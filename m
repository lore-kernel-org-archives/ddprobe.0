Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CC22574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647031285;
	h=To:Subject:From:Message-Id:Date;
	bh=aYRng6i5oslQ9dCaGWmOfblYOywkCjCLSO/oN2CK9Zk=;
	b=XVieDIDQ6zjhK4+8akB2pBL4cFciKhusHdqJ67C0E1uGcDo3yXZVPT6QPAXJg1W+
	DlCqlWTB9CFg08R7P78py2/zOVtgdTsu8+lpp1oVperGGEqg+4cnF5tMAPoZfVtV+RD
	PsQMIHfL9B+97pk3w0aGp7+XypkoUhm4ShGhHv7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647031285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aYRng6i5oslQ9dCaGWmOfblYOywkCjCLSO/oN2CK9Zk=;
	b=NjeYDlcLT/bF2X5H7aNIyvwIdrBbd+s2o0MyCDswa/iI+QaI05UggsmFEX1iS+xy
	r1AopaNtrl0BL3xt9GWWOL/O60yXWMA7lojVbdj+oHYHreq8RAzIzNQupotZkfiNObT
	PSSaaOUAooSxtiD4CSGiR+PCAxMzfu9vASOX4ceg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ab6f480-dcfc41ca-a4da-4d43-8a87-1aa7ac14e408-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aaa6889176b8faa5a29d4d97674abba3e42bf36b6b402c074db4cb36b7703bf
Date: Fri, 11 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647031284
