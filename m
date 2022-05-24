Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140B27C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 20:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653422639;
	h=To:Subject:From:Message-Id:Date;
	bh=YTabEU+Rfjevds0dezM2ZlBNPfnwxTM9HF9rbTc92Xw=;
	b=R20MiNimlirtr+aW4nNpOWKGJ64D1QvtOmnhwb1fRAzPddKMLAdXz39sqivpkZ+M
	+wYHlHhZBOJ17HQrVeRbzikCC/1maSsyBKWtAQu3qyXLbaa2Qu+qrTXQwGDHjv3YSpA
	OX19rlvKg3oJzBVVEOsrwVQKxb7iP/5zppnLaz70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653422639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTabEU+Rfjevds0dezM2ZlBNPfnwxTM9HF9rbTc92Xw=;
	b=J9t0m3HmMGaUs3G0jDT6LxmJglvP3qAelRbwlss0jMtpI/Ua8ed2PWenvfAetuE3
	M/dAe7mkyisDCan6ifGsf6l7MmuzUCoptrjKYu9cFIjimF/mDiJKLZGhPGpGQ/rOD8p
	P8CWE1joZiwy3DLTFyCLVfWA3fbQbnODBpquMMPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7ab48ed-3abb923c-e3e0-4834-b319-23002f6b7fcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9339f410a31931a20d8578ceee729133dc7ed0ed32774ec1516c638825c9b63c
Date: Tue, 24 May 2022 20:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653422639
