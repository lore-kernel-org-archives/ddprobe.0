Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9760F187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645046484;
	h=To:Subject:From:Message-Id:Date;
	bh=oDBWZtBlsQCBS6mZPvs5HjYHhDptR45Z9Ba4LQuecpw=;
	b=UIilRqgKYFOi25QLJNXBzZQmSk68/DNg9jtsLa4ASnFhWk3ZwBSWEcbKR4SSoMwv
	Yxz5TfpJG5cz+gl0dB9kCP3VVBVSXHHGMysUCpyD9xS8Wv5SF2KzCDm11/U2OD3z65Z
	AtSsnCXvKfyY/y8Ga2I/dxB6CPnNOLEwAliddxGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645046484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oDBWZtBlsQCBS6mZPvs5HjYHhDptR45Z9Ba4LQuecpw=;
	b=Aavqjg980pU0IJD7kEo71rgsrmpxg3NSgAqWM5kFynEiA6tomF07dqW8d24fATrW
	Qs/aOJ5E4Vz3QiKubmNzbOS2PC81f/6QRhI+U8qBQbjsx2u3vDQeNus1JbS7rB7Hcps
	xSI7GtwHYu/0783Jy4qHsM5ERxOK5RJy4WUSsNiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04694f13-c4a8c9dd-ca4d-4c26-b387-bbe1986f60ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b55e7e922e90d6312dc3d03113c23d321734b4ac6a1fd71772e664b532137a67
Date: Wed, 16 Feb 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645046484
