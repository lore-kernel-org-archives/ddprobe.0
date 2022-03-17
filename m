Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992DA4A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647543985;
	h=To:Subject:From:Message-Id:Date;
	bh=YQBtQ38YsR26EmOy2uC/KKZWm2U8SIeFaiaQ1QSkyNA=;
	b=NETB1tEsfY2NvCcLc/D/LXdV0fWT9w5NFuZb8CAChh0Ukb+DzkA2e0lkxYFC/Dk5
	nNGFh1z6lk5G0+IftXcKj3l7Yb+wQNcK6cKkHuJmu8RDsYbnTC2TOPb4dRy8CK45qg1
	C5foSZAjjrrGNJeq752lA4POC8PbTg67CUWQsAAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647543985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YQBtQ38YsR26EmOy2uC/KKZWm2U8SIeFaiaQ1QSkyNA=;
	b=W32zE4jk3EstJyDXzspAgTJAfAtZZ3Mqqi08u5zRA2V9g88V6pi1DNqTZrcj470J
	YYQ+LHydTguYGt5llBsgZf+qTlvgqn/TeDHKvFKD10jQQeZZNt9NFafYvMzTO3SKcP4
	Qs3eDKoABfRa2JIJd7pAbpI/J9S/AC9W+6RunRHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99462288-f45d77c0-e4d7-448e-8461-fd1933029387-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 975fa33b773e6555e3323bda34e89e4c0a3aec3785935b141423c43cc01070ea
Date: Thu, 17 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647543984
