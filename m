Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7B63D9D
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 23:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653436679;
	h=To:Subject:From:Message-Id:Date;
	bh=2XbR/e3l15u+ZcF0dMe2LcJCpyCAKW8goyUwASqWXP8=;
	b=CwVf+ExjQc0dBlwQT3gt+fvjjqPi0LAJ1dTQf+XFxEWyNnweOXs1kLjiMuuDT/Rn
	MipaAJZjXg2Nn8dDKXg/dlr4inZopDGmzRZfpRBStPn+gWc3MK7cekmWLahofG55+UU
	Z0dfMAVSqyaQqnVtgB2b6NrdekwK9vSV7dwlmNfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653436679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2XbR/e3l15u+ZcF0dMe2LcJCpyCAKW8goyUwASqWXP8=;
	b=TZUw0UVGQCNQNgC6ntHBubPoO7c+3lCzp/BX7MtIhjfJFrcdjtuKTpM8INpeQJBc
	N6QvIsxoZMTfGuFetwAeAozQw6/TvfA+fgP26Exd6Sy3Bp5cekHGuYw3Zy4/gL+n4dW
	CI0QmQ+eb+SJgPfAevn+z+ntDrfLgWw+lIP19Rhk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f881847c-69dd27a6-c320-4b97-9932-081fed250cd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 566190b0b8db063cbb2c8db27e78d00393f228362eebc7e309b30e94ba62bdb9
Date: Tue, 24 May 2022 23:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653436679
