Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDB07A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 20:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655152919;
	h=To:Subject:From:Message-Id:Date;
	bh=O3EGEuKTn+DRwNefZ64PogzO1i5g+r3gWWlbIJJG97M=;
	b=cmuis+UMbe54+66zG6VUXzbIKf4mnIIC8Ob1S4DI26Y/GfnQDb8CPiFwZyAN5jnJ
	Nf5k7hKrYBfkcwEjUk9goJ6A2Pigqob/QSi8GuK97+hxBApMo+jrFQ2S7exq48I/goS
	l+QMBInu3YzeIzFutpIqh2qBDCVzAcHF3/cHaxrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655152919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O3EGEuKTn+DRwNefZ64PogzO1i5g+r3gWWlbIJJG97M=;
	b=Vutt6Lbvs5qfnUPEd0blP4O8mUSvVCRzXSB2VxEN20L/PY8phzU+L+xiLk4i/Vx2
	UyFVMhndWON8KMenDgbSKTOl8FPpMAF7OdngbdETr2xKLZ41gZSx0m/GXb9R8FKdq+N
	YIVzsYcOi9Kt6T6lZWjAX8PYFYnYgwNG5muJPN4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ecd434b-9e9ebea7-9316-483d-819a-429060b82a55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a91471b734e222d097da7bb2f345b5c4ee63292e23fecfafa1d85c7d9c95f6a
Date: Mon, 13 Jun 2022 20:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655152919
