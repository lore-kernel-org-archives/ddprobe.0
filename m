Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C0A7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 03:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650772438;
	h=To:Subject:From:Message-Id:Date;
	bh=QV0S/46E0szanD2KhfO3vYQxCFhY3cQj4/IDzsLRUHo=;
	b=fBjjXjNUQhqirIuk//e+TMZt1PsYVr8vak9XNYca9JP77pbo4X4081U6zBcebwT4
	GNjCk0MsyeekOsnf8aml/MniuyBSFv026fmmTWL82jPwyCseaem4YufU+qWtDaPsyGY
	BY+2fWGESbp30COTxyFYs+Ehl0eaXwksBqAnTsgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650772438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QV0S/46E0szanD2KhfO3vYQxCFhY3cQj4/IDzsLRUHo=;
	b=PIdWn+xLEdZbYL2h7jH1uBbNn0/ww2PiLbCLzrD/0sFcb+gQ2WS797WtwJjIj4M+
	fxS1Wn82k72Q3v2rRE4c9cWA53SWbSK0ct/QTtdcvmJb6HaDJ7/3viN1vR8YmIIQvma
	3EXm33aUF0kJuVUwCDyJ7weky/pz2ziznw6MH9a8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018059b46d0f-257a8cd3-13bd-4abd-882e-dee002fcc5b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd7e11e5c81835acb8b9123af1ab563ba8851db9a63066d4ee92f12a978fe3a1
Date: Sun, 24 Apr 2022 03:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650772438
