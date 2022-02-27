Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B467B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646001985;
	h=To:Subject:From:Message-Id:Date;
	bh=edtSRAGuAZOAw8LPaAG2MlpVtt3agu6FF3FGgMWeUWc=;
	b=b2Q7wX8BafV8GqW4b+DfajMjY67oKoyUddIjGTJiPh8xi0W5Slxl9aTfRIbJNCYQ
	AUxFCPKHlB78C61Z3MAakzVr7wUq6IJNbCJQ52nu7Mi9fhVZq/ZA7h1c9RS/SqUOGN8
	uaXM4elSRV8QpNcUcvMspvyoiVcYdUHxRWcsQ554=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646001985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=edtSRAGuAZOAw8LPaAG2MlpVtt3agu6FF3FGgMWeUWc=;
	b=IX/iBoYKhJBYnnQEaksvoVd8Ey7YkjxIPKYq9dA3ouuG7mjDEGM11pKtS2NWB4eT
	YvZMoGDICaRyZl4YUT4GJBxBXWz97W8tDk63/UdQ/D0qLDD+0y3yDqfRt0IUu7jPU8g
	PqjOOecTC3uDR91zkR8o4ylLg5Fa+8zGgFGF+1tk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d5d150f-6ef79b1c-10be-4646-a881-cd2d9c3f2a86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a211aec46d2e67ce3eb06a6240c1dc3aff311c9ea565ca99918b7ab9534d617
Date: Sun, 27 Feb 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646001984
