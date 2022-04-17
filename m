Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FD27B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 08:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650182458;
	h=To:Subject:From:Message-Id:Date;
	bh=dGxUQ4OxGYXCu8zPVXagWYcU+/tedhSSzTbxJ7TCHCA=;
	b=Cg9NcVaP32Gu7W1N6fRPseNS++xjU26lI3U85tvAUB8TfuDIvdorlN9XzS3j/U5P
	7J7wUJYCI+PXbxC7Ms5EyyTjhm3MJM0ed+Jr0uapQLEmH+FNr4fDBlFldiWVe+xVpCz
	VosV8iHgHwj1auMM4rpV7qSQvNpd9E5UFjOU593g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650182458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dGxUQ4OxGYXCu8zPVXagWYcU+/tedhSSzTbxJ7TCHCA=;
	b=WzNyvCkSZzzNnU5vz3IMsr0TBtPwHzazIfaOs77KLyEBa5id822dQZ0xfEjc/b7a
	qanC02jsP2eOML2ww7A8G4BfEfnfrBRgPBLnwyxs+JUmOEHAP39XJB/7+XEFZYdgppF
	6udUknEGt7TrICf+rHM3dW6MNTdQs++h9JkPzWQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180368a0b9c-7c3ecbe3-6a3d-4e70-afe8-d4ceedc9a9f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6ef53d5e2fc3ad1aac3693fb7d689fa06d5030eda02714ef19f37576ec6dbfe
Date: Sun, 17 Apr 2022 08:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650182457
