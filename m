Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A64B2590
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650138419;
	h=To:Subject:From:Message-Id:Date;
	bh=Ut1Gh5cGWM0WIQKrS+skDuTYTxxj92JaCVaGU5/+wnY=;
	b=j1EXo6w0u6wu1X7ZNlZC7UZ4QqMivpumqaGNC12raw5VeG3ED8H599jRuUJrV0P3
	Y/YcYdqLbhb4ikqUH7rGgoM8iDei8Z7a0vNU/n/cA4IFACsN9Y/yLLPpM30mjicxq5y
	PousnfYAQfbgKSfc+lWdbphjbFIo10pApCL3JvNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650138419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ut1Gh5cGWM0WIQKrS+skDuTYTxxj92JaCVaGU5/+wnY=;
	b=ArtBfk76fQwcMG+hiQ5iLOnvso9p7LoQEhleNtkrIBgJvE5fDVHGoudCKwL61/VZ
	gysKTgxwmGSgvtQw6gg3WSvNTcIfo0vCuoz8x1eLL4fLSm9+Z2h81goZXUNED+MfmAM
	s3idzacIEGcJH6DTw0cyMjQGunzj6TzR/ftuocvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018033ea0c4e-e969e2dc-0720-478d-b93e-249c9905b6c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95e7572690990f0d839501b85816caae1ed181ec331c69ef6aa3215953419311
Date: Sat, 16 Apr 2022 19:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650138418
