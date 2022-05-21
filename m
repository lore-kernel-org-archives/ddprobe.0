Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF07A7E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 23:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653175799;
	h=To:Subject:From:Message-Id:Date;
	bh=0XNYTkjDszS/CBVfYTxVX7Kk/wjcuFfALAn5b4nCyTI=;
	b=eiaJcSzm06JkhrWHnebSJnQ09P6tNyk2PMUDLNXttqkxfKF0OAn1hoaJNwI+JbsA
	wKIS/7flw4bG4dMWm1ALhS4DgVYOD437l9S3kpeNQloJwoSMQTWFLvt07OHdr2tHk56
	lOxbfSpDcFnVtZ9BJn3asqyDol8RAkBi4+f5FzOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653175799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0XNYTkjDszS/CBVfYTxVX7Kk/wjcuFfALAn5b4nCyTI=;
	b=aCl5mlouuN961N4OhSvhQ7GBKYz+qwVXPHBfUA9X8tyuUfK4Gz1nu1REG4h1TR5N
	mCzOWqyV3I2vtr2MAUgoLhrgfi74aErD3R8qgdkIAg6nv2dR6E15J8K2ZVo+5J8ISe3
	80NtcO7tfyB/mE/YxuCXBIl0fwNO1LHoMQIivgCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8f4ce24-18a91bcb-9895-4bd6-9bbf-d94fc092eed8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6c40ebae984c6ee0cc439c41fa1e16df979209901ae7f678cbe9296ea97c13b
Date: Sat, 21 May 2022 23:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653175799
