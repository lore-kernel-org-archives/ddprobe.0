Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6947E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647953784;
	h=To:Subject:From:Message-Id:Date;
	bh=fcW/F3agzSWXCaS4Fm9SRzgvYbOtmt7hE86+gSq9Bhw=;
	b=B6/YR1hEyHbEkSmbGhTinVzDhYdUXatIYyXWMs/zDkwtISkcoVmoHhXKvmeI2ZHn
	WqyGXAeHy9OpmFc1DhajaF7iiuc2QCMNed7LQa9i53TF1foivzezoNmRTilO0bz+dYy
	tNzG8xXlQmeaIz3pyEy6oT8O7e1QaGKkt2j8abRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647953784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fcW/F3agzSWXCaS4Fm9SRzgvYbOtmt7hE86+gSq9Bhw=;
	b=TRPKy4s8u0+wW/6y1QltV4fEVDXJ4+rQqfwrwsOWmv2VrEeE4MuVhakoAswkRiNo
	+bgD8eDD1Jfy2Cx4SfrUgcW9tGYTRg+1Ln1OScKDUvuj2SoV8Lyq9O4vicOlec+N3iZ
	0m0tnxXDkXuIB9AeIs7Y1ZhPi54Umph3Ocytk9vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1b32fdd-d874017d-9f87-494e-b77d-45996f48d549-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b179a07a12ede36f31c38fd335cfee705388ab8406d9d7199de3495e6cbeb492
Date: Tue, 22 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647953784
