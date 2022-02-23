Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5712F4E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 18:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645641985;
	h=To:Subject:From:Message-Id:Date;
	bh=MAhzbRNiNnsI1LQsdaSWlspymW+YkdUPLGKsiE+3I3M=;
	b=ECuEAtIKqrDeOfMFTnZlGMeEaUD1gC6vuBKaYi4TtPm21ZGfGqROEe7hJ/FKmPXU
	TIvt7REGnRn/irhetxa76Mefoa6rSe2WNSRXv0h020zXmZdpZ4u9sbJIpHwNDsO8GEw
	B92cvDCDTck7tKvMVjidgwIaNvxOUX+BsFhr3BGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645641985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MAhzbRNiNnsI1LQsdaSWlspymW+YkdUPLGKsiE+3I3M=;
	b=AExdqTFxVCpZejWiMCBxGIZowOO1jyHmc/sTyDg3Lj7Tyaq6SsE7uj/3mRoFuiQJ
	Rkdse8hXgnMfn0cAX+rQV2jPWFefb+bME5HWg8x/13ldQGSzYFeutRRect4rX48SXo3
	Ld7gOK+BjSEuJKSNlI9wWjRuZHjgDAaPHnMPOGIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27e7ebb3-574fe19e-d43f-4a1b-b4fd-e01f076bfcf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 092dbace72938d58e95fad51655883c9faf02bd5a5baf055ffebfa6dca0d864c
Date: Wed, 23 Feb 2022 18:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645641984
