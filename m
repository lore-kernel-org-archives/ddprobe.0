Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CAD7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645371084;
	h=To:Subject:From:Message-Id:Date;
	bh=M0t/I0idbVLTLzGMrkqNzsjBy5+It9DKButn8WL+T68=;
	b=hVyButdKFHQBxqgLR7fjrT+X7WX/722DQJrFxaRf1MFOt0fKoIlGtAgoQzRO0tQQ
	TLbbELnZbOuhAnfggnOvGhABQOS7Q9ckb/vriRAk2y7MH3TxpTvKdu3g9qoAP+UBkvK
	nIthY7TlVmDzvWzzNxIAJmEsTmkc5bdKOH9zuL5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645371084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M0t/I0idbVLTLzGMrkqNzsjBy5+It9DKButn8WL+T68=;
	b=ehgqH+xsb7m64LaWfkVhbspYVtQ6m0v+S9a1QWvNPbZU9JXxBU+tfHXJ8/4y4dVA
	N/jtTHFSOky7ptLAGqBrle+4aiyovILtG1zergzhpyphgvsJ32VS/1TneiDzcQXHvb9
	hWg1YvxRiD7gNRb60mrIuYm+9uPnXYnh1GwOjwXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17c24fed-0ad8cfbc-8bc1-4d70-bf78-bad00f76a8a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e273f5d5027c1d2c9ed1e34959f7651707a8e1ca351dd836af4717c04ce1eef4
Date: Sun, 20 Feb 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645371084
