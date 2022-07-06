Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22D34C65
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657111612;
	h=To:Subject:From:Message-Id:Date;
	bh=Mc1g8FGv9dANMhI7k5iq3OEOpPvtYmV4fPS1+OGRpkk=;
	b=NxHtwiHyQKqxFsvOxGWFy7x7SxT97AfagO+kmI5YhtVeLVxZa9xK/XcMDxpHk40I
	xgKAUCRVkrSjj/WhVAep9++lC47ISuXMDKcTi54AeQONJ9JuzOCh48N/WVccoTtMZTe
	eTOlYo9RGXuKDOP/6zljM8JnrWzQoUtW6/OikJ3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657111612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mc1g8FGv9dANMhI7k5iq3OEOpPvtYmV4fPS1+OGRpkk=;
	b=d1pompmNDryzpq9k9kYGSvurP2YSUcYwxDSfciTeLbOYicN5aRhWL+Xr5QYhdQyi
	x6K16YC8O6OFoKhmCyX2/y1x1wibyWRE0AkbDgAWTtgErApUhbLfpue+lGXqW2whzQd
	gZvcdKkjqgnZB6tPfk4iYA1iRuFL85KV4xALt7o0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d38c8b6b-e5d7454d-5074-443f-97ea-bdc913e64249-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e7235e5c7a78cd61d64e7a6ee642104e24a5bbb0a16e58fb69b355b6b031fb1
Date: Wed, 6 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657111612
