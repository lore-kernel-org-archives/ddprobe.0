Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18627A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 15:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655306279;
	h=To:Subject:From:Message-Id:Date;
	bh=F0E7SVq0HxVGmMUZBoKJZR8JoMYx/httO1ULEkUhf8I=;
	b=HMJcfkkh3YVD7ppyYGbW4hpFio1MVaVshoQex9hnBvOitQtubKDemokPAPhJaHv3
	IzuhbGNgqTgoZ1AZPjy9rY2hiMJF5dnxDeVutb47MPNTJncHhHQ0p8LFCPXNklFHCfd
	FNwkFhpKxKm6P+Sx7yk3H2wdxsNjUwIFp5j7SX28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655306279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F0E7SVq0HxVGmMUZBoKJZR8JoMYx/httO1ULEkUhf8I=;
	b=U8oSJi2mqFH4n93MQLfq36uOQMCx/NrbVbCGU/N20rYIlaAjhl6VCB+8oWV1mzmb
	9xlJvQd7EJY3S56+WvC++9kXecNfbFG3u7gaaLI5+Hmmb0fZC7d7+0iNt6DqNt1TWWn
	PnehdZbLb+AU0bdujQJu9ORfWqv1+aAwrB2vdCII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167f15939-fe27a993-2a05-4f55-b225-af7eb1a76975-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e8e5679468265fcd177c9ce9ddbaa9cb2eeb7399fb31a9f3cd7fd8983d58ae2
Date: Wed, 15 Jun 2022 15:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655306279
