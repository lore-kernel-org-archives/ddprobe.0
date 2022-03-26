Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42810322E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 16:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648311958;
	h=To:Subject:From:Message-Id:Date;
	bh=q9RT+uj6zgyEKzlofphDAh7Bk7c6OSO4YZ+rqzJqHlk=;
	b=DqmSLB34tivP1DaU/Ls/D0oL+Uu4WLCYRZOBULzuplF7d0mO+H4leS5qMus549/X
	xZHXiDdPZuiJPeuu/jGiKDiAWmqpIng88zupb8qCDDhl6KRU5xWTbVWYWNEDvSPAnC1
	ntmm5GNKMB9RHtjPKZta7yDBFp5ANbEZj8GMOpzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648311958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q9RT+uj6zgyEKzlofphDAh7Bk7c6OSO4YZ+rqzJqHlk=;
	b=cU7aDojz8Ljk1nNvqAT8PY5iZ527kHsn9V4mKDMMPFkLQWfhIVw4JsMI2SpJaM84
	YhiWc4/C/rgpuUbv7Imau2t5lXmlVuVL0F3ioOeFp/YWY1YZFAcDJON4Gr+6POfN9Rt
	9h+5gQwHjzVrnr/OcHkANnXQy2NujVslfZIoVBeM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc70c7b12-d0d43955-525b-44a9-a9f6-627da41b749e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0fc3825e221b932510b89ffde6444fa58b2fabf468cf5bce1888c9d8886e424
Date: Sat, 26 Mar 2022 16:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648311958
