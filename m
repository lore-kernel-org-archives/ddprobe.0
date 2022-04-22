Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1994923B4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 03:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650599038;
	h=To:Subject:From:Message-Id:Date;
	bh=C+6a3yn3cwDfmRidpVG4n7uQUPbj1iEYNBgpwaOn4fc=;
	b=PoJVYS97GP5ow+yDyWhJGzFH7ii6HOUdmNr9NlO8aG2buFryA0QhPZNRNiRvz7KE
	z8iK6d5RbpRS1PuOx1cGWmqY7wGJX5HNL76FjOUsj8swDK89SdQW+Z4GClTWA14RR9P
	0GxSMheO/2e6m8FHvTqKYO/PQWxwnb4zWppLXTWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650599038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C+6a3yn3cwDfmRidpVG4n7uQUPbj1iEYNBgpwaOn4fc=;
	b=NStPRwlCIvHUMfLN1mqhDhdO8mOUE0Ag/kDwCH1Aj9PmtkhxjP0wLlIinTtmAs0d
	ienVP3EW6DBsjr8RaMY0fuLLbbCTzVWNCLke9GVc0swNjC9cNRB6fI/etW/c1I62vSk
	GhSbrL3h8v4uPXZ2uD+HqoLn4iFp0BcFRZGaVciU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f5e8d0a-c6f9da08-6bf8-4e3b-9124-478ab7efcc90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d6ab55d7d5b931e1a774801273dcbd022e2d640c4159617a9752e7c8b675bef
Date: Fri, 22 Apr 2022 03:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650599038
