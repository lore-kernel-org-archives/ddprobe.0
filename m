Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B32D2918
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 19:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651433998;
	h=To:Subject:From:Message-Id:Date;
	bh=y1mfd0gMXyDNRjBHSgF4aE/GzaOVGWrOGpNPgcz1SHE=;
	b=mguqGGkkLXXENk2yxJz4ueFN95dW91JzLO0jqmU8ow7ou9zyuLWFnugiJ8uqTnWL
	3i8uXl6YoNGhy/yw6sCBnGue+ecETwI2qxZhy2hebuw0zIaKfHwuR2MY01gANGctSkR
	OchL5yCJ4Nmq/b0P/IfdgdGuAed1fRor/GeDKk8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651433998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y1mfd0gMXyDNRjBHSgF4aE/GzaOVGWrOGpNPgcz1SHE=;
	b=aUXf9llfsc9SDqIEUbqWOtXJWLkLxmZATBlqFmJCXWONekDeTRtS1keO4wnY0uGL
	JpuOIEr9KbZzd9tMCfbBnHDyTK/qjQvQn+990rP+9EYMmTkgt1S0vbtYEkkYZLjOugI
	6a/ltY6ASko+/5qPuiiO1em5WnhNFSFzyZQ8bvb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180812307ae-2ade4375-b98a-42a1-93db-02379075c9eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7acc329690ca6c51e532c0dfb2c20b771d4c09b71bea8751e3a46a95be993e4e
Date: Sun, 1 May 2022 19:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651433998
