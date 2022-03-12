Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ADB7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647124584;
	h=To:Subject:From:Message-Id:Date;
	bh=YX5VdGr/beN//lMczrSOZuwx/8O41vyv8eBNhz2LR58=;
	b=Cslix6ebncQ0lkPdbqHamuhYsTIKSRQhye/yEKxq+dXIzkX/NemMfY/A91y3/TR5
	B5L34q2paete/mhvj/VnPny3K9BC+StEjuenKWh3lvpbfsX7E+hKVV5FQ1tS8He4caT
	aSlIL0Xm0NK2YvkETOA2uPHR6Tq9irvU6w0U5R5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647124584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YX5VdGr/beN//lMczrSOZuwx/8O41vyv8eBNhz2LR58=;
	b=kXGCg0rI0wNYZPh94s+Jqz6Ls/iKspXZpT5D6jnmsb5wdpDKyPGmX8pa99v09B1k
	pz+qD9Lk+SoqAF//eA+6s9GE0gvRWJ5K065ai0SWGc2tB+g6h784hA4FS7nOhKn+sWT
	PhW6AclkXMCtIH4EzYCs0sMHuASoVfbkDWtXLF64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8046993d-ca93d091-d235-452f-9829-7d13aba6bdc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84431f26e2ec246abcbaaf38b69f9f9acc75a6637b203fe2ff802cdc46f46b72
Date: Sat, 12 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647124584
