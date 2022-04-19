Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D53FA23
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 04:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650342118;
	h=To:Subject:From:Message-Id:Date;
	bh=uGXt1OyFaGM4qdjoyPXqCXIIBsbLOCtzvI9wZ6/2Blc=;
	b=Dy5grigJ3sXf5qiu1yriUVyaJWOoUmVBGe1imKKVWKx21AF1sbxGGrfClY17I0Sy
	N9XPVnyrs/y1OFsrB7Jde6F3x2Pa0CcnP2IomuynlhNqh4x+qQhgzQM58BAZnLXNM1+
	GWYH2lg7i0bz4cJ4QjG1jjK7zRh6RjC3d709wtD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650342118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uGXt1OyFaGM4qdjoyPXqCXIIBsbLOCtzvI9wZ6/2Blc=;
	b=kxStBBjqe1T8oSGBdOJB36UsNWhKOpK9lfM5q17aJF4wxKg/c26eSdHK3JK9vVXf
	QJRl+7yi/aIabC+aUsMSBBCwzTQIk8F/XgiKmH62k9yHcAZ3du9pv6lgH5dxvmn3L63
	w8bOMsrqaVrfu0H0jaMKkLD//+DIHDKw0LNKgVOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180400e4381-bcf24830-fbaa-4709-88a6-e6121374130b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eba06b08926f9a3bd2060afb3a290cd9afc295d68631e1289a82340a359faa1f
Date: Tue, 19 Apr 2022 04:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650342118
