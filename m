Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D140948CD
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645971985;
	h=To:Subject:From:Message-Id:Date;
	bh=BuQ+bJsim+NXA/nFB/Mcfb8cET5LUcN9VxFXGTpfrd8=;
	b=T29WEtT8QzjI0q84Up5fVO2vFaEzfYaoh8XvuLDAzaAjMtjWrk/xP3bcR+FYFn9t
	nxUyr2y+LHO8xFgWSlljcL8zaXE1m+y4Cf9f7iixhHpKein/KhitTcO9LZ1t5JrsuBW
	QtZ818K0YBOyVAKOPf+fL0n0tLBVFI43amsEJCEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645971985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BuQ+bJsim+NXA/nFB/Mcfb8cET5LUcN9VxFXGTpfrd8=;
	b=aPWqDYb3sN2Jov2SdSTkkgtLdFHNtinemrsGUDyrdKkkthCix4SaXN2kBLhkQ/Zh
	SrYGYcSj3xoRTxbHzu0I8iXwnW+pBhzBJiEEY+cMvtMFIVO0aWPJ6pQU/OuTntt6ABT
	N38cKUxcGmTLAz+15Z9nZhi07n7nOfaZjrLrLzxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b93518d-d2fb2b1d-34a0-40c7-8adf-ee2b44181b9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dce5c83477d14441b444ee77953b752f73968d70ca0fbfa05a427ba4ea80edba
Date: Sun, 27 Feb 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645971984
