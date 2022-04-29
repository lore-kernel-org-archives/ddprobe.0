Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BC51852
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 16:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651249318;
	h=To:Subject:From:Message-Id:Date;
	bh=qTjwMbJ5dNnyFAk9hXLA+maGlRF642XLm32gGP2+5lU=;
	b=V8RJkN9sX/d8+P3kWo78iXPbR/0kIW1gE7ZdewynMgcCAdgFxflJBzXQ7Jmbt/eV
	25vxWnDwZX7HJYrNd1i/mPgVD8txfYHrGrGS9ENlMkqRTZA/zB3T5wB9EglSvz1UF+n
	rCFIRTpVsU8MaAnUTOx4v75GP9GXnUVtxsBAf1s0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651249318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qTjwMbJ5dNnyFAk9hXLA+maGlRF642XLm32gGP2+5lU=;
	b=grkmH0v9zFWQ/b+Pe9IsSuaWC9FIT5pegAvYQN5ret4GnKEaW3usjW9XWrHijt87
	hWyCQk+3t07Cub52uQLRPFPI6CSPRwVR9Vv1yfN2BobZGwXMsJlIsFmJ9HiEh5lfVTg
	TuCpwTvORvbGYklZ5uBSlHp/cE6uPU/pautBOblk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807621097f-693389e2-e915-4d94-93ff-194e310d1b3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99dfae0f35f36b6351a8a1ebd83dd296751aa27e8ccc7cea565686521288d54f
Date: Fri, 29 Apr 2022 16:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651249318
