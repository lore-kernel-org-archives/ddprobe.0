Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EE73B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646670385;
	h=To:Subject:From:Message-Id:Date;
	bh=6PmeyLdtfzX9xdZir21tivkVIm9fcVVv1NUqgEC9/7U=;
	b=I66Hs3iGsgS5rtGbgM1wC9ujHH8UJvmlLdVdABVGfem2cjDfJ5+FzmAvtLytPmEV
	mSLZ9EAQRDZWg7occBmyv2LqsnAdiAeAc9ElpOTqnPmeZuDTWDzS0fyeubfZXQDbGsk
	P0jIc6LL9M25WiACFAxqplkL2lRqEJRcrfGNV8MU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646670385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6PmeyLdtfzX9xdZir21tivkVIm9fcVVv1NUqgEC9/7U=;
	b=N+ermsMmYq5HDkfgK0RVIDbnkDCV0L6FoeHhfNmoCDpQ6j+3d2LSB0ydVJysRVuj
	NmBBoHFRmnr/6Rstd70FBP26Hp2ktni8iftbFY9ZwFdrqV3N3Yz9joNeTw3KpDWTClQ
	qU/8vijHwO1UrLfYAkZQfYRQgdIoj+glprq/BncE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65340ea5-f864c5fc-cd8b-4f5e-b96c-a152e9e4893a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39c51f3cd8228ae9172ba0d775e7d2de8475fc6f2798fe54b986792d6d481abb
Date: Mon, 7 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646670384
