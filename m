Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10E81385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 19:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650395938;
	h=To:Subject:From:Message-Id:Date;
	bh=GtG021da15teoWU5dpJ6urhAM3Ym/UaTG0gWQGb5q6o=;
	b=bdNSi6o1DamAFlPaljK8YLXMe75WJHgFDKCCvkVA5iMQ3rL8Lwe4AcJ0Gns0CnKn
	euShWxqoYhNGrNWT556A9CKGH9EaDBS+LwM8fGqzbpiI2zVl265t897MCMBtCrLW0rk
	TziLGDL0G4jRj3+5HxwrVa6/6yLbO/codS0ugNkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650395938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GtG021da15teoWU5dpJ6urhAM3Ym/UaTG0gWQGb5q6o=;
	b=FVg1ndnqvbpt6/dDC7Q2+ZLwf60qVRIavi/X3vLfZxcs8+TGaWplZX+BsKMbIUYT
	DwtmlIoijtHlk0x3Cq/jM5ZpaS9cjkaFlEnca3xKEDnpFiO8q5CkyCNhC16FfgLKMeA
	WA5Bh3XY+N8nA0vidrKjROvv9y0Ejj31Zed4VvpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043437db9-7c343f30-f5b0-4bbd-9fff-528ace06e876-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed4e3540fba398a627b086fda16b18b3b52e3c0eaab70a2c6b63ae5bb2b99183
Date: Tue, 19 Apr 2022 19:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650395938
