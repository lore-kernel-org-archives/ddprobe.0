Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7F27A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659952852;
	h=To:Subject:From:Message-Id:Date;
	bh=/WAbAoIO8EuVOm+LW4v5BmqUZYG83dd8Aoi9zNqduwU=;
	b=O5EpOpECWSM2WpHTFMae8qBjPm3IYMw785cRsIAJ8MoMp2C7xHg6oU0iJoFKc5qe
	cUZFc3YRc8vAIEHEwItP3S0LcVC78kgwcFRNWzYgQyYmmmqvustyW6aOtwDnQGwRD7h
	Sb5KIjlPrhnT7IEhXEBm77UNKtsrMIr/ZOFPNNYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659952852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/WAbAoIO8EuVOm+LW4v5BmqUZYG83dd8Aoi9zNqduwU=;
	b=Kj+HyhBZX1wwoPsHNNRCt+0Zhpb5MRVttPoxs9td8CKB7QgbAaoayuw9S33pWuGk
	O0HWQl2jUr0JOTdhEPlazB/pejRBaSDy7PbkZCapuR2Ao42T1ul0Ar+AwHkmealfVdC
	IPCdOkWNHN4uC7RvsHz/bWtUk9p/a8mXGyuahIMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ce66e4f-36a0a4cb-9449-4da1-bba3-66180e792292-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe8d5001894b1ba916ba11361c261d8400a653e1de7ebcb763d62f22d5aa4b8
Date: Mon, 8 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659952852
