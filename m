Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A1D33F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 22:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650320458;
	h=To:Subject:From:Message-Id:Date;
	bh=hMZ81TsIUyy0quLrUhSDNBHCLuNnP5GNPiupXRG46NM=;
	b=H07Dq/VKnaeg6gIXxBLa4IsQ03ufXSrQ93l3ZNcZmyEuvIMZ2LMB5AHilljGu+pf
	iVh4KbQyJeCQH09xaMDcvGKXXIBZZth0fv27XpXYCvkZrhJc0en2YP5x4M2v8XQ7SJ2
	aYcDfdzaldP+Os04OAvMQneiyrgJhn7Q6oHdfaus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650320458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hMZ81TsIUyy0quLrUhSDNBHCLuNnP5GNPiupXRG46NM=;
	b=kSJBbYyHnXup9p8uiX4pRHySSPo/2mSx8pY44iOBXX5jAWdHqI4VMHzOTdXQ303l
	DP+NcTBh8LgzXlAo/w52zr+zWwsykMBRReFniVqHxNR6214V49BzOEQg0N2b4rNmMq5
	wdAcFVwsMgfZduFFvvWSWqRZLsYIx1JsoHFYP8S8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ec3c256-5c15906e-250f-4092-b06e-eb6048c357e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a76cf9766b8db9422e3b416c1db5c61789b3818508707b6e20db76370612d7ea
Date: Mon, 18 Apr 2022 22:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650320458
