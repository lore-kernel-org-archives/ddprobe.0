Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9581723AC
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645083385;
	h=To:Subject:From:Message-Id:Date;
	bh=ExLWpoJde43IOA9eJy658KO0QgBMvdkrDFN/ioeVLrU=;
	b=Xra8wvNzu8JzN4XNMFyih9/J2wv9N/FUkc3NHMWQwzRJlBdcM21+tV7EiiuZVHA2
	uqWrGU3SGn7U/ewWnV/Blzxk4gMYgPwR8drt2R/g3ObOafQNFdFeP3d2oXF/ix3ZkN3
	c1IbcSloHBogFiSC3TRDKpPLwiBDnqtqFr2ZVaq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645083385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ExLWpoJde43IOA9eJy658KO0QgBMvdkrDFN/ioeVLrU=;
	b=c50pKLaJ1VT6uBTBejHztrLgUJr+r3mTy0jUSqtUF9WH/rX48AuqBIgoM/tM3ye1
	EcAJZKj4AKhPYeVnsKUxmcp/uI/kT5udAFwwTJ2P6Mvp/O8JHoaLcP3iolVKDP50aze
	VS0GNE8PBR42ajiQF5H8kUETHeMqEeaRdXV+K4FY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f069c5bd4-c4694c42-ed6c-41b5-8b33-171a9b6508f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 373e43af5047a83ec0589785829b9c3a296f84cba87f889121a5a371f8b9af19
Date: Thu, 17 Feb 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645083384
