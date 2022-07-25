Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3874A19
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658774812;
	h=To:Subject:From:Message-Id:Date;
	bh=LPZaLg3p99neULxXy2zok1mP5JdLyJdzN26attoYs4o=;
	b=EIKo5n9Vlqh1L3VrZHP//gouyXP/Zoy6LqioxllrrDmNRMsg7roGYhyLdLoLhgKv
	ZduziR7rxna4KHeJX57VT6onCZBXbmKyoeHZLqxDvk33ZMEQXreC4/lV4vD4rv2jeey
	4OX2eEXMxaHFfeoQ6NEUKPrRt6wmyryg9aqGFbKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658774812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LPZaLg3p99neULxXy2zok1mP5JdLyJdzN26attoYs4o=;
	b=k3O2omuMEbLLsq+q4Tsi4hraBy3v5Lx/BnrYVW6iTgnSvfSWIVEUxMmdDlXenzZN
	SMaeYJNEe4lOT8X7+kjnchXfmyrYOfiGJfqtghzCxa67reouSqkzYNIzBEYDyoioct2
	guVA7oehngaeI2+0kSvuAWyI44wZwp8fv6a0/WEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236aef687-abd301ca-f851-413f-a916-71dd13f1c6e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00392eb686c65a5748e6c90fa561578aeb38042bdd010960298a88445ac766c3
Date: Mon, 25 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658774812
