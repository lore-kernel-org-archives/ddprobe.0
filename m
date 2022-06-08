Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED35E7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 01:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654650359;
	h=To:Subject:From:Message-Id:Date;
	bh=KvqYALOo5OcDXdpT3JmImASja0FClk9E5kU8iIN0TVQ=;
	b=SG4HznKS+JnFaSZGN/rBt8144ZJiw+LKlPLBLWUeK7KCbydHpj/gNKNf/O6ott20
	tlXjo6fEZcM95SCNMN+IFzk3fvyWDaJfOoGlMHWV76yiQKmbDXt+dv9miA5iYatNGdg
	jkOBhlvWNV/k244jYF/0wobvuod0/g/P7QJCLe0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654650359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KvqYALOo5OcDXdpT3JmImASja0FClk9E5kU8iIN0TVQ=;
	b=Gagzo6dTZOfXhgy8YR5ixAUIFR/+MnoK+JMVtUvruNB5WgC8bjdvrUNus8467AI9
	/W2DyMrGdy+jgJF837drE2pcTu2N1ctvaClSljtTvt1bkFxJPk6Gg79tIL5jlBiIkwv
	vDHs/1eCO6R/WZ1kngYy8mRuZeU8/gI2b0f5Kr18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018140d8cdfc-cbb90adb-4996-4c20-9505-24cc3c757e5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa2a02742bdbbd62216c1e45cf6f472e600be0dc50daf279985a9360e09ed627
Date: Wed, 8 Jun 2022 01:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654650359
