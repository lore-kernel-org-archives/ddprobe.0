Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6D67A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647316884;
	h=To:Subject:From:Message-Id:Date;
	bh=xWilK4JFVR4idX5cd/me80hXBIxJeY+6g/PisNfLAi4=;
	b=S4ErIBdb3HJ7aqHoe0fdFap6hqDD5G34JSwmC8rq/oGAxS4CYJWWRNuRS/wa9/gZ
	dXGxAlwAeG0rNcehqi2yR3h+ZmnF9vH0fEAk8bxZ+yiC0wdWv03E9LQ34f5LesUyoDD
	hOde5YYFvYJ1PZp4rGt1rG+7QJ67OhhYkBf4s9FQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647316884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xWilK4JFVR4idX5cd/me80hXBIxJeY+6g/PisNfLAi4=;
	b=C9HPvIDZ0RDrQLlA5RuExivKOUjkOy78KuhBITjB99P2en88FDh9j5l1d6f3xJq2
	rdTtgrXuwgOCpFCQIFWVAHbeGqawoTiKodCi46PdgBxFNpztXcyuJthjGZGed4xcu4Z
	uTM6RDXoTPOzQ2NfZBfO6D3MIFMyzn+IDs/iH5lI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8bbcdd48-d9d7fbd5-408f-4456-b89f-466eca53173e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1d80b486ebec3736ab23f41fdd3a148eb36db018c6aba9da49fca579b671d28
Date: Tue, 15 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647316884
