Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4635B7B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 10:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656585412;
	h=To:Subject:From:Message-Id:Date;
	bh=7g7aJRtRHPz1AF1WpjoJ+BySDqxfWagEGfbW9+uHdz8=;
	b=Ym2Rd4FmCJvcEMQ8I3HoNTtH3tIykJG6dlpImRi7lhkjhIxCqhhNnCWgwNbNNp4u
	8bWQMFdI+2Zfe06Op3xFO1N10SMutuhOXgEG0Eg6QHRUWaF2FSPJxncDkHGIcSztYYQ
	vvjbSU9qE3bp6AG1WXKs4VJjSF9bLYKs51RZvRyk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656585412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7g7aJRtRHPz1AF1WpjoJ+BySDqxfWagEGfbW9+uHdz8=;
	b=VhQJbEnzQ8eNE6CjWBMltPG3SJUqe2pgd65oitxhfo4JcxBRVV8AJWRs/AxYQpVb
	k9Haz/rOWsm6kism/ia316eG9zRh65HLLzMFn+jFqokMSkBimisyifHn+k13JZuJujH
	ZrC+5Q+5s0oW/vgBjNKqxK7XlrK9Gcw2mOKROj8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b42f5ebe-50a1052e-24c4-4f47-b8d1-170c42e857bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb1279a6f4005485be2c632f2a1cd3d80b0c135d603d6f8f5721471082bf0e60
Date: Thu, 30 Jun 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656585412
