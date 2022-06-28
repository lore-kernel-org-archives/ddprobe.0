Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DDB367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656397612;
	h=To:Subject:From:Message-Id:Date;
	bh=JUpGpYdSIarVo4USuGhIeiVp1OJR7qx9Ah4iVBdeiGQ=;
	b=Pb1J1orE0Kn/XLuPlZ5M1hS4Sk2qsFfCL2KE05O67uw0uq3TETGO+4hTWJPvqwJR
	JxAinP9f4Xs3SxyImxcnu+aMGTir1AOOaTfo47wPQuzOOMj+9iCQb7YXa7si8znrpta
	L/3NLWS/49/r+dmxtiYV7CHbgReybPDa0ebmvAFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656397612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JUpGpYdSIarVo4USuGhIeiVp1OJR7qx9Ah4iVBdeiGQ=;
	b=c7NgPwO8zGRDRItLcL/e54VHGI625xsWx7GeAqYWXcNoTxnKfmWl2boUZ7n9bsr8
	p3dngzfGzH70XivYACDyUX8zFev3FeC4lRfhEBD4PYCkEp/Uv0U7L8wstq8QaMeX4KQ
	P/eNf92mOa3pOggaUtgamzk4aOQQ4eXijqCAC0NU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8fdc515-6f714277-67e7-405c-92ee-f7752a4d6abf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0912dcf0d5b79fa077767af84a8a03f5e53ce8cca9bb3e5091c1eeae2d00ef5a
Date: Tue, 28 Jun 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656397612
