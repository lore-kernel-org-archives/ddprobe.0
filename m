Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631144A01
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659306052;
	h=To:Subject:From:Message-Id:Date;
	bh=9E4XYM8JMzsh9z+TmI3daEMb1RbnWqJbXLvSCCiASu0=;
	b=bqEjQ8fuVUIgkb5TuA7OJQPsVEcMzJxaRXsSa/dMP06vNswaUTx+E0ehuil/x/NL
	fPASXEuciLyNeS/pIq0u/+qS2daC9NC7YCXw8ELrethTtPJEe3p0k7hicrmNQsmati2
	19n9mVoAzdS5h3qeRBWfKha5ddkemciPToL9zmys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659306052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9E4XYM8JMzsh9z+TmI3daEMb1RbnWqJbXLvSCCiASu0=;
	b=jlWMcPWBddo2PjbQrTaHd1MDtknGJG7ZLuyvETtLuwZTgiMJBsHvsJGznKfrECEA
	7O7ZSEy0+x2DgQQuDXcKCdbtexaRVecJfuBE5BkQXmlzJn4zBGdD+grnIK/OUFqRrXf
	7AoOM7KHheYAftEXGnnJzsg4+4Fw/fEjpLipxKAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256590ba3-f9cb96d1-a461-4842-9f01-3ee5e30d5d8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 584f20273271ee32224ccf0178bd1c18495c6bb1d8c79390c348805ab5edc5b1
Date: Sun, 31 Jul 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659306052
