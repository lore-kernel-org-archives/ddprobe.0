Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A5010EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646558184;
	h=To:Subject:From:Message-Id:Date;
	bh=A5vorJNGR3yCVBQ1jaNrZudrEHesPpzVQsa7Ey2zvV0=;
	b=GHhsns4vXtcNcZIITYjgk2XWrhT801TodrxPMHYBCXq7sGbGyEfplgQ6ZSlRfn8y
	LIMcSX7kcoaQXtEP2fIGQ+qUBgR4x3RiFwfC9/PcyfBl1+f3sOTEJxu5dkE9YWNQboT
	DW2pDx2D2kG8ttUaTSFyFEaf/NOOkJO3HIU/egIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646558184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A5vorJNGR3yCVBQ1jaNrZudrEHesPpzVQsa7Ey2zvV0=;
	b=hAo8c1XgxH+vBI+P3GnlzZ4RGUkV3vfH+LQSDEqzG+/+NMlcBrdZGM7fcVkUKeWw
	jyGzO6fwAB+pgwTKtN7mU18gLFJIJgDStehYOa8UbV9HfMkNf3SWMwXycJhRdRU6g8K
	We/SgbZsLrqYkSK7dCDiZSEWwXMQPGaAXzEguZBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e840526-8385d55c-5894-437b-837c-7844964abc6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 151df9eb7a255122297eecc6367c8c17e840376a4a8330353c6996208b5c78bf
Date: Sun, 6 Mar 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646558184
