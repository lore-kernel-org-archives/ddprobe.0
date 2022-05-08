Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD0C184D
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 16:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652026618;
	h=To:Subject:From:Message-Id:Date;
	bh=SN/WP1WYaH0tI8L0Dh4eZTBybk6v3MVMevw5YBCXcHY=;
	b=NikJm9oGEjgEj3OYf/pMmAwoHm92n7XEGysXX8jaAkiDN5aJa+Duzh6BBEnw8Jkj
	yAasj4XUFLOEbqJRhwnFaIsrrYZVobwKY8sxOEX4HOqiSX4AVN0gEuIz2NPyplYDJZ2
	T7R2e1+OVCtMm1jUWlAHJYc/EU4Xj282iUHAT1V0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652026618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SN/WP1WYaH0tI8L0Dh4eZTBybk6v3MVMevw5YBCXcHY=;
	b=bvt4XhwrrdatsAWQVBdl7v2TU3PjseAr2VG1eXH0vdQNZmJZ8ReNGXGfm5eHkE1d
	N76kTEIiFJcM6nMFibYYd5zIhy11wZHAOC45w8kya5mU6zgB83bxCCwDCzy6UIZDvP7
	efLywJfNeLNi8ukYrntoMuDLP1tosMwnngWTMetw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a475b196-f55c8be1-4f22-48e6-8493-23496c8e08aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d81d541300404bdd3c4b9eb648de2907144aee72d558e8534771bd6215d7777
Date: Sun, 8 May 2022 16:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652026618
