Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0573222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645995385;
	h=To:Subject:From:Message-Id:Date;
	bh=2D6LqdzPupa7CjZglRqL1aMnhCebokz6cyCitOzvXPI=;
	b=lD/vYn0O2W9g5hXACgGRXMefH/PNVX29N8S5EYycEzRvZzfwBZE+2osG8GU5ey2I
	zdyv7EiwHHCat/0Ugb0LaFUKpunbvES4TmuPZBUyLCzVrWQd2tkx6FRLO3jep3ffAm4
	Lq3m5nNKRVDpuQZ4U8CoMXYE2/LrDqmp+h8SzR+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645995385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2D6LqdzPupa7CjZglRqL1aMnhCebokz6cyCitOzvXPI=;
	b=lERZ0/w1q+4e0Snb5dKZQjz2BQHCeK6a9X36seP4F0sJxJPlsaGN22lBuYTfF4KD
	TrPv4neI2+7ZoK96fIkm6M1PcI5Iw+HogHG8iZdzZ88vkOE9RfaFCR3HtyNGnd5Bwoc
	/F9VvgYFE/gOZNcWhBa7DF65W4uKc+QiJj13sEQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cf85fc6-cdba6bd1-7f41-4af0-ae66-457bf9313256-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b5ee7b30885bd987cf502c8313808b8cddcd5683b4ffbf999a89404254a9e31
Date: Sun, 27 Feb 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645995384
