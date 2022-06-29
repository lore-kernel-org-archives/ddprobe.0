Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECE87A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656471412;
	h=To:Subject:From:Message-Id:Date;
	bh=6uyw2btoN2QUtEHsoXWl9sVsIE2nsSgNWEx0vN+iORI=;
	b=eDitG1/UGZL8ZhP4Qb6rZgsY15VO5Pp7jmnaCm+QcZJR4bLv6EnoRHNUiuM+3Bfy
	tzX0d36hUWdkKr/iIyUZD+EmjZfPwqRpO0RVyaLNvSwbcqdiDdJAFg4/x7FCIumMXJ3
	7EmicDxkulg7+DXVJtbSXCMqhgFK8L8PutjuQ8YM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656471412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6uyw2btoN2QUtEHsoXWl9sVsIE2nsSgNWEx0vN+iORI=;
	b=fdkYzxxiE+Be8yPP7eBZYgTLDizV9wAANQKc5/VCJn+tVKxfiQy9KnDMqGxmDJNH
	MXyEnTBy7iIxzXZX8clvafDqGWDdJ+C/1HWBE8EPuCbVXyaThmMCWcIFAZNMEwhAe7B
	VJJjDBf8v/HOtAme7vSW8vYsrZeOBT6dhB2B9d8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad63de2f-290f3dc5-cf68-4ec2-80fa-c53890f016c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e7e7b3ba3fc5b68fbd6c78eb41324b410a776dfa86016af705ed5e24393c730
Date: Wed, 29 Jun 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656471412
