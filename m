Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C16F185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 13:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655213639;
	h=To:Subject:From:Message-Id:Date;
	bh=K7EEEQyqrD9WM7JBKxoaDr1EXkYlSdScfuA0m8sEVSY=;
	b=USvzLy8MEZlLEQZeyXJYs/ieGeLNWcDVPPX6xh1oHAZisMsYe7OPrHVfOwIIuZBO
	ZFAIodym8LBuC4VuBdrndqCqm3NHtmXqavQqotD7ISzxpIU8QHk1Pcubaerx72GrCqG
	ALAXD7loLasqZOPIwQDVhULkNZV/UWcY70cqRaDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655213639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K7EEEQyqrD9WM7JBKxoaDr1EXkYlSdScfuA0m8sEVSY=;
	b=OJMMXR1Rc2okVNLjb3EmboW7204/82QiGzKNJMd6iND/qMQJpUFOvuir/QBF8JLz
	ddOVfYBnhmb8KtmB3y2QzFeVPReliEoYaqWpRF0ubqWwC7gzSIGV9wNEhUO3K7lKDxg
	i2eUvDR01jChQ2Q8C1qnpBRiB89zlsr6M6txisKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181626bc668-87f5d6d4-f1b7-4c92-884d-a645615c5750-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed57cbf13cc628ec3f7ae4112dfd760affedc01dee73c57fa355aa535cf8be8
Date: Tue, 14 Jun 2022 13:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655213639
