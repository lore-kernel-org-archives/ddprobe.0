Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5084A15
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660246853;
	h=To:Subject:From:Message-Id:Date;
	bh=7Dl0up1UkFtB6oBZkrWCs5COpqSd9QXzTZwGA6ldqz0=;
	b=j6kzU+V3oYEubnp4mP/Bzht/k527i/BxtBsGniqIcU2rsiXwBDRo2OaskkAROSQC
	t1qNYzcaQFw3P6glmxeg5jsUvpA2cl4DTirdwI1YxTAjYkxH6DhroPMj72Gdh2+c8xV
	owwGAeKA2K69dGxdksbsqwlo6GvjO2IkgUQZ2HW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660246853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Dl0up1UkFtB6oBZkrWCs5COpqSd9QXzTZwGA6ldqz0=;
	b=UgtV6kTi5eswD+zknP8orMBDKgz1qTHJG7Mv1AZ/EQrf/dw7exz1I9Oqiv1pg0f/
	DQBPxc+W9HhgvlpQ3HuJwZYlBFe09plRjFb71RpNjG4Z2REfoIJ7Qp/ho20xNnWM2r+
	azol6BcBIodGMg+RU2nsFSlO23FjQKr0qcHeF1Vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e6c8471-ea52ac32-b47e-46d7-a32c-a76eca4ef5ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff766b8aec3f30f8997974c5e6d3ec48554fd1ba5b02edfbae6400de0a8ddb87
Date: Thu, 11 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660246852
