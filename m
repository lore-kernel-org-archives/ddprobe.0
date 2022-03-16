Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F7123B2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647410184;
	h=To:Subject:From:Message-Id:Date;
	bh=tQyp2+82ZH/i5s+xRlM3kXXoOFNZpLg0Y6W1Y0iDTRI=;
	b=M11okKGUXg7AyOVjzQzk6wJ7mjeKpbsSCIo1U2hecX7zOc6Xe2KD0PEMbVBubT6i
	8mEvyoZpFrbBMtJT9A6dAtIaFhipBwmdQG1Va8FFO3uQs1FYA3tzjFOZDxBVdIqExGP
	eQ2PBGi3BEjWv/CG+GV0szjojQRbCyZRRVmjjjiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647410184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tQyp2+82ZH/i5s+xRlM3kXXoOFNZpLg0Y6W1Y0iDTRI=;
	b=eO0J/OQ+3Y0C5w/cF7vvj/oA1S1yMNdNXEWJvS6IrwbXHvRkDmkisXDvsh8JLTbb
	wkBGRxMEkmsZ4NTDsiIKXPxYwoINOadU9nUvZjuRO5y1nabFSw3VUOZTkDTiF3FHtiH
	k7O8pidIXfkAl87Zi5+8gYh38TdQfHmehB8o8/BY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f914c8217-6e929901-77de-4116-80fe-24f8008b569e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c181d21a3be06b1e99a0f2d95b52e761ac6b36909be7bad2675b7d897941353
Date: Wed, 16 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647410184
