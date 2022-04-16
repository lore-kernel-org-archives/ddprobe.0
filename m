Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE76E20F3
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 06:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650089398;
	h=To:Subject:From:Message-Id:Date;
	bh=tyg8PUEKLnHznaq4erpiP95voqgvoikQKNI/RDkPoBg=;
	b=LJt287AYMtr0wO6e5jkNdQtu06qOa951Vk85z+xKADsFO1Rro42lK/RBSosPDAf0
	BjnXgdtJn18C4+EWqECwmyvWtSFjYRaqoA9sHItNI83cP3Hn+vyK2Gj4oGe8CYf7ky7
	PgjVQIZpc+XY5tz+5C6wxgfMCt8/ioH8HBNFrSeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650089398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tyg8PUEKLnHznaq4erpiP95voqgvoikQKNI/RDkPoBg=;
	b=Qa5kqzRyPfjYZ4Hg8tBiuGbFkUqrM6DeClvCtS3a562qULYW2bymCRBgWT3CIBLd
	7QU7KoS42zI3wLEUmh1cFCwCnNdMc9bdRgLmI1V4jm6fXXk/KxSy4cj0gXs+KRFh4Ds
	eXc0MDQhPWmoqXw494pTL1yCUkB70XK19JrZkeP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018030fe0ff6-ddd484de-452f-4154-9cc8-5ad333e1ce7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc0c4a45cdc58f7e1d8d1922d430b204ebd9749d93343a6ed33302a55f7a3012
Date: Sat, 16 Apr 2022 06:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650089398
