Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F280E658
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 05:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655702459;
	h=To:Subject:From:Message-Id:Date;
	bh=oyPkV8XYf8OUUgiHBMFttBrWJZ2r1P95MFjX1k1vUcw=;
	b=UwrGZw+E2ZKiRogblub3dL0n1eACGvfLOHg4iKi+ZzoX/jHShdIFDUnDKBjKy5t/
	hIhPuY8nGoOFAzl2rc3zxZ2S2C28Uzfg6sVQWJb7dbiOjuSYK/seZK0mRek1gPsUXCO
	PhXPuIaGLkupUTQ3OazF8cVecuryDGCkqxLcC9nU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655702459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oyPkV8XYf8OUUgiHBMFttBrWJZ2r1P95MFjX1k1vUcw=;
	b=b2JGQz02DycwKjufmisacJhLFXTL+9dMaZUxWIKAZddVJNDZ6yQGLMP/l8IXy2PT
	2H4OCke8oZnPuiFmSGP1BkV72WbjG8VvnAMemP83GIjA0r7ADViXljClmWaDJRyMswr
	H/ZZjD8wgVk+wltgGUPcNdcMCbJ5YDwNt7yKAOFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f8e9384-07bbaaa7-8169-401b-903d-9a4ab3ae9ba7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b87f123e1e1b98fa6f51983d934eb8ac7230af3c927f40a34c194da9b9e460d
Date: Mon, 20 Jun 2022 05:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655702459
