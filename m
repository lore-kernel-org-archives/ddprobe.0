Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AC8365
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647908485;
	h=To:Subject:From:Message-Id:Date;
	bh=xbHBkWNXvl5TXsj6MYfAF6kdQFrs53cIvmb4YlIkoMs=;
	b=A6tfgt7wwcTnecXVCvXv/2KP+Tmz/MkyL6Txgkiwk4oUoq8NtJM5RWOWD9kKrQGT
	euNwsMb1rY+Ee7kfXCV7EpVq/dQSkzXJVxypfefogs/xadL/df2AH1C9l1GffjCM638
	jypq6lwpA1NTx7Oiysm0NER21y4+Rx9PrNEjwjEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647908485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xbHBkWNXvl5TXsj6MYfAF6kdQFrs53cIvmb4YlIkoMs=;
	b=WuNrd5IEBvuF+geEbhPhUpr7wDhp/NXE6wJ/3pq8yMfYVGKBF+OfOXmw7FSxuSJu
	ld/pHbnbgv+j8Ietlw21kIT68jsSZ43Iv4PEzf5/twICxIumtyX1j2j/u9EUZHkN5z1
	kQvAEpZOdLlgSLo9imEZ8pcB2o+6CnJ6u803mpg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faefff68d-8ef699c3-f1d4-4de0-8e99-d51685e214e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b7b5fa4ee7cf3a1bd6a22b7bb264c013326e275b2d63f1a8ca1817a9fb03722
Date: Tue, 22 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647908484
