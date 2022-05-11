Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F80917C2
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 16:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652287079;
	h=To:Subject:From:Message-Id:Date;
	bh=pflOdIOv8pkIa7BulVXKBnY4avHS+G+W9xoVuAOzC8Q=;
	b=F9nPToXDqP28QvSqrA7rp+drR0hUhudO7IBkWdhmKg8sv93gkZMzF0fkKYN4fzpB
	ucsHAZ9konTQb4vd5cbsGLvFg4pKpe+xBcFYLckSdfRQV3ozp6NwX0zCndKMYlP8tFe
	sh5vv60Rkjud5KpoxyQt6p3FlDv8ns0LchzZg6Ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652287079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pflOdIOv8pkIa7BulVXKBnY4avHS+G+W9xoVuAOzC8Q=;
	b=EAO0hpsEGLO1j5iYbE0i6neLtoi2pArVN/MYDhK3UNEYQDYb126YRBKyJiB56Syg
	rJBZpFXccGuxB6l+FXwRN9WJerV5hdfz4dSvE+IbO0HPYb4kzgZyh+yRd3EU/NddSPZ
	S3kL28ylroS500zlWpSW864tccmAwdoaxNaWCcsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b3fc0421-daddd146-e507-46dd-9f91-7ba2fe1e9354-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a235f7ef6642e30085b05c2b007e5010dec05fb9a78a7036f1649be58ebd53bb
Date: Wed, 11 May 2022 16:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652287079
