Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C0B2115
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 18:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650133978;
	h=To:Subject:From:Message-Id:Date;
	bh=SYPGxR6bISpXDqYnq8CidEQpU1zfpV8JfIK0u1jfTqA=;
	b=id7ZNNC4+kRBM8BxaVLrShdI3fsjs0FHv2bJeIQr9hBkqjyTm5cE5AvDcZQ0D5bi
	SFQaPkieCQGCaMqfC1eT1uRH6igTQC4RoL/xSvHoF35XPnQiCdEslJ0rIy1CDWPj82V
	l/+q417tsxJx7V/P+aWg7RupyJWQTtZ5LQz5IU3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650133978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SYPGxR6bISpXDqYnq8CidEQpU1zfpV8JfIK0u1jfTqA=;
	b=JJ0eaeYHf4uE/Z1fuWQg0zIG+0MBe8pAutveDU2VMBjyaNn7ssvMxiDbQhre1WXy
	DaooYZ3HHhqLtOZkBs2r2qWntvtifHlKrE0m18BAdUJ0yzFL8EOezxufg/SqDG6zoWO
	PUtIQs6NZVEDljlrAuaWQm5i8LgR17RSwjgCdyk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018033a64cab-86dc73a8-2a0d-46d7-a0e8-0d1e29567a39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a64f80d42c46b13b745021ed737fb8687bfc3c18c23af128030449af5bd2dce8
Date: Sat, 16 Apr 2022 18:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650133978
