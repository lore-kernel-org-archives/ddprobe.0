Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8937A4296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647090985;
	h=To:Subject:From:Message-Id:Date;
	bh=9SZZaH2bhBHhPdzZox7kX7MwfEYpDkkl/jdtdYLk+Tk=;
	b=FzpygpOSUxfgjHBQpD9BuIsPbbpZzIgRCD+whdfaFDkU8+IFTb1QVxAnfrreewU5
	0AmLNjbyaXW+1DzRR2jWEb8625a1ebWcTF913GZETTCDjTL4hUogTrEYDZ0QGFz4+9F
	6aAWyozlBVswfTZjw/Hyil9qG8i8Gtlr9tYhbKLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647090985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9SZZaH2bhBHhPdzZox7kX7MwfEYpDkkl/jdtdYLk+Tk=;
	b=CoUAHi2H7NEwbBO9g+LrqjLbLTDI5KsPIcGKZOW+Igw1z8xsHzGYZrMiMfpQD+qv
	nwMC6AyJohxe339BAA1MhMNgnJKWO+z1zXu8RzOjcS4DEt0DVUVB/3S0ZX3xJRL9ae8
	n/IIMxSo/cx7FtqnvZKQSzym4qBNI/6pZr31SIyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e45e76c-62fc86c9-de49-4ec6-bc2a-d64e038d24d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e502f8bacff7f2de33a2423d958bbf2ac2ea904f8da42dd2245e4d59ad282fe9
Date: Sat, 12 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647090984
