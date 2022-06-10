Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCA67A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 01:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654826339;
	h=To:Subject:From:Message-Id:Date;
	bh=itb6xWPZ1zXP+bbQ3FJ6yYoeymTXyshdSFxnChB32sw=;
	b=A6KQixG0AZnSnoDZnGFOg+VvCaGfl0IJSSpLA/qWldZeIHZtoHZBDl8nCRafeQJO
	YOiW43sLaukZ/VbcYlqbLVHmtjAPA0uMpu1LPcmVOKW3Kf9oKae0Q2IKLXcNUDiQlWk
	X0wgHpogn/YGw6k5PdayXTNRMY9thudj/bbow4YY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654826339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=itb6xWPZ1zXP+bbQ3FJ6yYoeymTXyshdSFxnChB32sw=;
	b=gBzYnkedEo8VF2Y9DUZsDp1dEqxGwQIf62bmQH7fqkHLqLgZMh8WJj3TV1jjOImY
	Nh2Fu6HlCK4r+LXcnDz6WmiO3AUaIEbt8uNiqiXBYfKnwxYAtWAG+K6ZD/oX6W6gKzi
	OoyzM9hc+deLPTZb+nVGXll89lfa2bGIZlxd1WH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b560beb-87af06bc-1526-42e2-8bff-e6c24a9d343d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bedc94ff4175fb85f6ef17bbfd266aae1e40da5a0ade8b4200e55c74a09285fe
Date: Fri, 10 Jun 2022 01:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654826339
