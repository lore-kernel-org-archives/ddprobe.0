Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504627E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647069084;
	h=To:Subject:From:Message-Id:Date;
	bh=aODSrtCOtSDD5s//W2yG8hWxaTY0onNQqgzrLruNHf4=;
	b=IYq/YNaVz+62oZLjsagi6BtBuxHC13bf43EgMBOQWYdFOgM5dECndx3tdrqNDZdW
	w4+4K6zDQ861e9laqxgZMi6kMYi6UnmrXwV1jC+BxXdP4aWHz6ZR6ns5qNrwQROZfRV
	nrLmD6AJ/OH52WQdO+PdFBaHZYTkmd2ITUYJ6Vl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647069084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aODSrtCOtSDD5s//W2yG8hWxaTY0onNQqgzrLruNHf4=;
	b=Q/JQq5PLZscID4q72voyXQF8UrnN4datZeYmvpK++vdA45GtFJHVrlJ5TPuIDpVx
	IQU4hlHErKOUEWCXVx/XKcPK3pqc/DvbjjZyKSTiLHCA75T5Ic9+s1IoCNpit801yLR
	bzwlPP1LwJ5nQ8tm8RTb95Gu8Q8ZV8gzZnwxB58A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cf7bc35-d000f6d5-4e61-4e0e-85b7-59de7134e705-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b681fbd36cb2105131d3d9c568e36b200c2d90b78939ed7f034d109d274e1290
Date: Sat, 12 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647069084
