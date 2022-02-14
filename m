Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088F37A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 07:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644824455;
	h=To:Subject:From:Message-Id:Date;
	bh=+ZlBREFx7sSr5nwTUNrsCHvcofLUKWfK7CYp6h/UKbE=;
	b=X94cmgOJAB9aa1TA1JucYGDbKdpDDqt1hmgWpF+3JkGw0fzge2wZEs0iSMpKAUGt
	yAtGf8J4T3r3MDZrK5xeU6isjGP6YnqS6bqXGbcsP5hEBOB2qE8ScnhMiwFRztTnyPE
	6EFDh2Lr9VKWv/SR2BW8nUIYl54lxJ/QAuC+KVbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644824455;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ZlBREFx7sSr5nwTUNrsCHvcofLUKWfK7CYp6h/UKbE=;
	b=LJoJyCZSHfdvwKhCofk9zR5et0YRV9iEcn73M41lWW0T57TO4fwitXRUmr6Uwjfv
	EMlUj7M1BMpB58b+MPR/04xO0RLANUn/vRRpYGPnXRbBe7qRJtcXkRR9mB2qQ6bKGam
	qtKnIBlVzEu/iJfjWgCRIVNQx17qRpEytMyQVMb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef72d6814-b7a42ef3-7dd8-43c7-b792-654c2fcbd842-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53086d7473c75c6bc203526b84a66cde95c284d174639b150e515a4355c2e47d
Date: Mon, 14 Feb 2022 07:40:55 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644824454
