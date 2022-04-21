Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADA01FC0
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 15:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650554578;
	h=To:Subject:From:Message-Id:Date;
	bh=t69Yi9eDteWln/AI206Rn/5u56yIuZ7xlDEc/vXnwXU=;
	b=Dc2BrogK5PirXn/ZgKlxSl3ekuA0I+1+DUmuVs4gidtZb7+5PCeK42LLWujBhxi0
	tbTwZQ0txYYQSwY8f1CH2w4PfutAVn5X+FlAaSsPXCjyqkt5Gmti2jxz7Jpd5aQtrhW
	gJtR7nD2wwd7sf0IomokeYHG7SrRENGuM6E0UKLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650554578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t69Yi9eDteWln/AI206Rn/5u56yIuZ7xlDEc/vXnwXU=;
	b=FJJ6hXAY2snzICrir6oTg1628ilva5996nRjWY+HlITGW3svNiRfGnZ/jaFauc3K
	e1dN3VUvLUkJwapn5dV0jO8ZkcfUcR/kU3AhJFUkVLuOhnhkDjcY6GvsmvPL6WK4rwF
	f/SbzwDFqy7zj/FlRDPhKImqS3P1rzJFSptZA8D0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804cb82580-e89b1c1d-1ea9-4925-ad1f-f228c8ff1b56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 106214239d557ae019e3b8a2e57f79b8af301f4e361595fd00262ce7b2f40206
Date: Thu, 21 Apr 2022 15:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650554578
