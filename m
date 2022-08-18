Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6967A7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660853453;
	h=To:Subject:From:Message-Id:Date;
	bh=ILJcyWt3hdaNCcLVBH3k30WEymkarX/8o+Ej5dTK/FU=;
	b=QZyQ3ATYCe2T3nPV9dBir64K0t4h2hDseGIHkxCXbz+lrrEKekIuhS6e2qsXIlTg
	x1As1UAWKfwX3wa8Ge56CCadOxx0hJhNE2yfT1z9VpHkFaI52SnukhJh8nGqW+4fn7B
	rlzKjxxdb+xHII5PaytEBxYe5S+OLoeuqsH8GrQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660853453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ILJcyWt3hdaNCcLVBH3k30WEymkarX/8o+Ej5dTK/FU=;
	b=XGlC8hCt5muQqkhsxwbCaMdFrQCfPUgYU2n14gqA6guDnMUjK+bP2DIHiuC9/Kig
	TRdDRC1MxfpnNLSfgYvz7/ZuIJ1XnfbXsaR+m4Rj0gjBE8EV3hpQ/bpGyLVCIjMT5A9
	bCSFoEEWWgAEqboXj+26CHJq5NaLTky2EbopSN3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2947f55-278bed5e-fd73-4d07-ab79-99bd437ed9a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e2bf94d3c74b65a9a0355df77c90091eb12e07787c6fed8b90e49eeaf2c0d58
Date: Thu, 18 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660853452
