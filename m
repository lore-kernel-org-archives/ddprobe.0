Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E0646B7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656546412;
	h=To:Subject:From:Message-Id:Date;
	bh=s9M39kU/6scICIbLQskX60jxmoGc4RfXnqSzWho3vUI=;
	b=aJ3aCia9IqAv7U8gfYSfKZP0ajL947w/RADf5PFNnW6w5m/P3WfdYUNy5uIcCmgf
	0cmW+qSIODArYiBGXVCps9aKNJKeDS2G86aKNi8mN+eK7yYTGfjS+A3aH23LTZt+HXZ
	75ol9sbDz2S6TmlUbgg665BrFnoqWYg11LZNLPyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656546412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s9M39kU/6scICIbLQskX60jxmoGc4RfXnqSzWho3vUI=;
	b=Ni1TzSSpFlc6KTthYmy/gsz8f6ESt1ZFcSYiv30zoAkvzfADUg24j6iobFytqERZ
	4BfWgW8pCYjRZ5yQCFC+R0PGoNDKf+5Nc74bfVgjVDRROoXD41S4jompeQCHvZgL6jE
	04ugbRrRWTRztBQ/NZf5qA8nztLDycbBJ6A3DD9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1dc46f1-bf0b5546-3ae6-4b1d-bd05-e17a63a51622-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70671a9b8e2dead5d15fdb9a5c4100e8aed1bd8ee056d65859bfbee35c66cf1d
Date: Wed, 29 Jun 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656546412
