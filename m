Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF574F2F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645245084;
	h=To:Subject:From:Message-Id:Date;
	bh=UWq4MSNR4bTd/PfZSrHxG9/VH9jykNeNr1N/fvqzykc=;
	b=TeiMxKu5EmCrJdA6EnLTRf724n+LInjiOd6iX9XW+QCstFx0un8ePPm0nsGaaxqY
	RI4bG0y7wrRFB3LI+mfyqHTifzFtQXYvDVIC1fYkM42ABbXMAkNeFIzlLdvSxE2ymUn
	3ryhOgIxqKTKwE08v/VIZaMi+177Mhst5ZngUIc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645245084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UWq4MSNR4bTd/PfZSrHxG9/VH9jykNeNr1N/fvqzykc=;
	b=RepBfbkoxxs+4csBj5G5ZfU9GLEj9GyeMoeoy0SbOSr/2Xigo7BnwCLhgFovn6jG
	GAiy+tfgFbkYIQijPlwDKpukHBso1ncxcWApCC1/SozQ8ZiqD6SHmT7BZ/GY5+6dsA+
	OUuUK4K1nIFebYyDDfTv9u/kfVECOZO8P8CiSBag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f103fb453-2a2bd2b4-9c15-41ba-8eb9-6e4505a99867-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffa9660a7e44ecced16709c84c5054ff1aaec1e1dec1e2d91037b36d6ed01f43
Date: Sat, 19 Feb 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645245084
