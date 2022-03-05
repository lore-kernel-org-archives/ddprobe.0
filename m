Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AA02F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646512584;
	h=To:Subject:From:Message-Id:Date;
	bh=yyqgqDwxIsUtY3RkdN5Up6XCw6d3oj0r4DoMjbzDGzI=;
	b=JVI48uYtAALmundRsy1gzkVTEJrYUgmhScD6Wv2xbNkuYmgLSlUtrOfnkG0lNaye
	spf7+/zv2YfI783z9NqjcWGFgcKW0RDhTijiH456YRdi1o21S6rzfoMV82kaUVGTSzE
	Z6349vN1xgFtTzC16BPyWRV9P+u5hKrafoftjxhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646512584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yyqgqDwxIsUtY3RkdN5Up6XCw6d3oj0r4DoMjbzDGzI=;
	b=LDYjoVluUMuhCdcLFo/jXNGS8LF3KsBBpxKNN+Nn24/5vxQ57y6lKC7Z/aFwtDLc
	KdKwde4musHnNlwx+Tx9xH47j1O7He+6LO0B+fZom5O/JSCBLqJxvH1DaP7VHs5Pzoq
	LoNmTrhfAfFfW+AXG4LmtDjW3QtWqEvoBVirGZMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bcc382c-bba8a32c-aca8-4e34-9adf-c9749618b8eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47b0f2e5c7a7501d36a9847583cd3db0c30e8f089961bd2c5c05b8ee592c64df
Date: Sat, 5 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646512584
