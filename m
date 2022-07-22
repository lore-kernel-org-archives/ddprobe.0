Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515C6AD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658516812;
	h=To:Subject:From:Message-Id:Date;
	bh=nieioo87GieLxwBSMaRcd9sEG90N3K64selFfh2njyk=;
	b=W3VOoSfx4T7OvwQLEjgO0wCCptpw6nsQG+QO7b+3v/RI04GL3uZwH0D+gv70zfF1
	rtbg+DywSAmuMaNy8RrKcNY8lXSokmQMQeW8VZdPMTgngdMOAPiq7IF+9H9naaEVORZ
	iLLvyYDJ5ZyoUmiejm1vWIx9z0MXjA1wtvPny7Q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658516812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nieioo87GieLxwBSMaRcd9sEG90N3K64selFfh2njyk=;
	b=Z4RFCOXXWqURhRY5Cu/eV485oZ0BCV6uou2XiCmDBKJijL0WeMu6e562c2Y4IUih
	ekPD6GSsXFWtpdcryndjJtLIgqKha+gtTM2QepnpjaoavD+eZbhUIutjDuN9o9jimJe
	+rE0fcJ34UUsxJAOuUkUorMZuDXY7A8M8mX9JJxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182274e3226-35bdbfd4-a2e4-4934-839c-746395053679-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7040ad4839f27a5fd2eb6b3ba4a82b85b45c2fa5723ee4296db9db6cf383591
Date: Fri, 22 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658516812
