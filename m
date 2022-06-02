Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17920256E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 17:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654190219;
	h=To:Subject:From:Message-Id:Date;
	bh=/6QagsFiNRa7tSj71BatlPWxWARQiASaYthug5SnU7Y=;
	b=GXdxwBEEpttkHt+rH7QMW25MBg/B4LjwVndgXeGvcNbX3LbM5DgY/CsvstrcxHqY
	ja/XXDZzzb6JQnY+NLWdMzcqSbIiBSOUvvlBlCkcCqx9q5zxtm93J46abOOEN5ZHSbj
	NRvnXvaMhAKhgrBVMQ+F5+8QzDKxE1PO5SwTYnGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654190219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/6QagsFiNRa7tSj71BatlPWxWARQiASaYthug5SnU7Y=;
	b=MeRHbpthWjS8vMzUmrBaGleUrfwXyKXOQ+2fKcr0dIpkafMjA6dZc6iFUAzmw+9c
	h2sIsDuYKXPHpq3Jb3usJQYpUrk7lEurzFLbDOZ7HrsFoCA36CSFfcc/zcjJfHOrLZf
	o0VrVZepaeGYhEG+2/CT+l0QGoFuxFvbcMf3JafY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181256ba019-9f2cf7a7-9632-46ec-9f58-c78b1f3f0381-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 733f969bd2c65620d4888a73dfa3c0dc2f199773d3e001223fca1ac927905040
Date: Thu, 2 Jun 2022 17:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654190219
