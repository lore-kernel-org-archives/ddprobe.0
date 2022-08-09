Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471BF15A0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660004452;
	h=To:Subject:From:Message-Id:Date;
	bh=xQudsxMCCticuqqQg9Ogs5vmJXo9tPcxNRlxkd0iMfM=;
	b=A2TqKoEpsj3ruhFXYBI8813Z1xxECCe19s97DvemyKRVbjQDtk8QcrJiv2GMeD+f
	4ANwAT/PhDoPR+CJntAv5DRdJtR1YEBIMTeR38na11kB1oEKHbvLObYrjbaFNJU3iWR
	NwcLjlinBHWULK3mKsM47dBBlDX8GVflhZvz7oEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660004452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xQudsxMCCticuqqQg9Ogs5vmJXo9tPcxNRlxkd0iMfM=;
	b=BKHNBtlNaRE2pUB0eKOWynsBKRo5m8czwZDICaa3M6Y5EHf8L/XisSWKYLCB/gqo
	vlw7leLA6p7Bc/n5/ugCHthcz8Uaw+Nrb6DIXMWh4glJi54lWeUavugADscD56ej56C
	Q0LdvnJ4NBj6U6ZNAHTxF6tfvgtl060T2O3Lk3p0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ff9c8f7-f07cfb0a-1b09-4321-a995-1b10cf184667-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b4b8eed2a1379782d2f5e15e8844c86a1bd681467edabacd833a6da3d31cb07
Date: Tue, 9 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660004452
