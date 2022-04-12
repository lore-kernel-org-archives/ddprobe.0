Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA15923A0
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 18:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649789698;
	h=To:Subject:From:Message-Id:Date;
	bh=a2aYoP1G+AFuei7M3fqWh0AD0+90Ty4amg33/uq7zqk=;
	b=E05KNEWhT4S7r4LUwsMniuAZOBfh6Nyn1ngvgSCChPojyqYLHEoGDOkZkWczuvEB
	5rmAqfnvMU03qyoJXQSL1BxeTcUfrUrNrg6AQg+pjDQgK0EVqrp9Vtcq4YqLD7zd4pV
	Fkr99w+LdxjxbXoGyANsJYn4YdmjlfIvvrnwzPTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649789698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2aYoP1G+AFuei7M3fqWh0AD0+90Ty4amg33/uq7zqk=;
	b=LHxOFzYNYSFV94rVUEp8stOTGdcm+vTe2BZ4e+Wj6rgKv6slDlwW4WKvHraGyOOK
	Wig7QJ5S1jp9BJ93dsh2+ZdPU9UnYmfsYFw3/RHma0KS6HcCDGAR9KVslZFkeJmNi5E
	4A40hZRfmfAEVfLs00soU/m/t9LuOWSK2N2f25OI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801f2100b6-82c2b240-5e75-4e57-9c10-2c39611981f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d639cfa80e70b61dc5b3db14cb93c40c24bc7f1a36e7a2380ae31883fd687f5
Date: Tue, 12 Apr 2022 18:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649789698
