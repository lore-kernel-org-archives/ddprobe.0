Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4857815A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 00:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648341298;
	h=To:Subject:From:Message-Id:Date;
	bh=64p9AW5Fg2kF8EX4aQAkPikjc0oIb1jjFniO5/UOZQc=;
	b=etzqj9jU/IZbLFNFsP0FpIBaPzjG95F2F5YpkF01X3BuB8HDWB6BGFgIf333ypLK
	94QM8D5tnq9ll9AMwMm3eN2Fjn78oM++tZy++TVbcVwYL9L1fEnSbkB+x2mvhX9RwHt
	452q2QJn7imDyLRxFosAZTHvgFdoSf3d3VpLSN1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648341298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=64p9AW5Fg2kF8EX4aQAkPikjc0oIb1jjFniO5/UOZQc=;
	b=EOedw0CMSYqsgFDrLxU8yVVAGGYp8TU/bpG04vYxVM3g+8gi3ELTQhbYNSoCUYHV
	4bMy1NaAIj7Ezm8YxfF5rIH1VBPyTerCTNR4jyZ9ZjB68Ksv0TrSOzlo0PFwb8yzwhe
	IenQU70iwGnTmA6DMujJSE35aMeyzPHkD7Y6J+gM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc8cc2c4d-bec00605-a772-4059-a094-61974b57d339-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fff65e7b1472bc27c4cec331af95cd5931904234460a293e2eeea854677ac79
Date: Sun, 27 Mar 2022 00:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648341298
