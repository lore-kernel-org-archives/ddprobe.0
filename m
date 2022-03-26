Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698C03215
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 13:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648302778;
	h=To:Subject:From:Message-Id:Date;
	bh=6Axz+fLFuvuZhRI86rwKjcn/LLUtmsios+D3QEpLdNA=;
	b=LSs3L6CXpt2tEbTe+L78+F52ZY0OeTvqCYXrNbgYtvWxmCywMgtxjAd1RUpgx+9I
	UpgzRT6twVcrDHWcj+S2RXYD+F/3qt018RHvJzvhCgZ6TrCe2tMovqtr9nUfk8MtdeG
	HFIigwYUwsWYPCqyMkZ0LA25KpFlWPOfGgUA/qsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648302778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Axz+fLFuvuZhRI86rwKjcn/LLUtmsios+D3QEpLdNA=;
	b=XOaF85P1pawDVyJPNmTqzyVF4DWyJzZeawgdRI5B2mTdWAK+amYsewnhTCH/Jrv/
	t7wU06Hkv5wknMWn1uyDGSD6TX0o3nz8c2VQCaXtqZpXwAuxxLkLVOxAwCztQPWPePO
	zW1GFhWcLwAQaLBkUQl+VNwXHi7MiTAnD+G+WryA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc68067c1-8750b598-3bf9-4868-9f31-b0bb74669e0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42b77f2e84504056fbf0bd755cfb6a586570550838f42d9412cf6cabecfce366
Date: Sat, 26 Mar 2022 13:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648302778
