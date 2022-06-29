Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE066AD7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656541612;
	h=To:Subject:From:Message-Id:Date;
	bh=SlUzKvMLSXvNR4dxkpHjnkoxXdNLlR9Yf+aRKhBpCCQ=;
	b=dsBd2IEZRlmG6+B6XxS1fcDtOH6CAndeXBrJbl+fnB6CA1qdcOZe8y+0d7LWyAtI
	dGZ5KiI7COhYWbbXyF8MTTtxYzhnxKGL4mWskgCg2I1c1zaAmUOXfoJguEehj5fcPTH
	PCu6JgQ4+ktCv/WQAhoxrgmm0fyy7Du3rHL9EuKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656541612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SlUzKvMLSXvNR4dxkpHjnkoxXdNLlR9Yf+aRKhBpCCQ=;
	b=g9785wiwbFRBJW9aa0YxzVUT2CHBX2noXYVzGGaj7rUDLnNhdeYhWKW2x0krS0hh
	SrgC4AVclBGC/WsZbVdOi7kM1VzTHBJPUi906nXCIrFRCs1elCmmfHyrI11xU6qUrPV
	FR59CUsASsSL3/sCoJzcV3gTO1HkKXimvVi6YPlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b193090a-942dcf57-a742-478f-b09a-345893ff2920-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 202467601bc54f10115f864cca9450e46987022cea725e47998a1c5780cb377c
Date: Wed, 29 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656541612
