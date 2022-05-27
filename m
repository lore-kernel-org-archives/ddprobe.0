Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D1C1FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 16:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653668519;
	h=To:Subject:From:Message-Id:Date;
	bh=8e5O1QHJM0XnW5mqQ54DR9mGKdCIBJR6aNOcR3fzp3M=;
	b=I1Ebo+wAhERXWPYJtwmgWAYpDEMw5io5B/CV8pIft4pElwmDDaD+bLuRM0KJB/7g
	LAXIdzES19Da+hwqC7AipyXptemEsGBQUxU8JtIuEDRVNeBVcEIjqWcENLy78+hat4A
	UvILCfltodgAnMqZeelgj/aCGhpf7CsIIx81EsXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653668519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8e5O1QHJM0XnW5mqQ54DR9mGKdCIBJR6aNOcR3fzp3M=;
	b=fzrbUUjP/4v5OP5Vm6wSBtoLmEud1OPviIelR58DeZm6+LN2oUIjbFVxCjjFv1E3
	OiEBYxj9koEZ9ID/trbh/BIBaE9p4yT634PbF1kJNnVyiz6+suFoEWpVI2zJ8UaXaNN
	sK0CwbZ5LV4qiAmXmj+sVz36eVZVN5w5EeBp4J7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106531d9e-da055faf-34b3-4738-bdc5-c9ec7d68d005-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 298cfaf7e15e538572139b5d34c33a0be258dc55df8b30aa268f0797c77ab2bf
Date: Fri, 27 May 2022 16:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653668519
