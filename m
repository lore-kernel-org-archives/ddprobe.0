Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3413237
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 14:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648392238;
	h=To:Subject:From:Message-Id:Date;
	bh=aq+qaksvk3bTsNnVRl3SxnOyOmmbaZQFHRKv25p9x50=;
	b=UCv/VWW2qr9ZkbVX5l093pdZIiIZlJA3gEM1TGRU1O3lNXDWKkeNI5qROqv04ols
	/vo2VhvyFEpkrP33p+tfeCHrWC19vMQ+tVQnzhMVzxrTwYbWu4ft4r3fLRSBwbY/b+W
	9az0zsRGzR+KNbrXiYA1Tnskj7EfMBjndQAbJyEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648392238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aq+qaksvk3bTsNnVRl3SxnOyOmmbaZQFHRKv25p9x50=;
	b=af5UgU6Y+MUTZaSj3mjMgsHTRMKCxDG4a6EyQa/CdomyQ8bVNInTwKt/90km+AKx
	/UXpNp9mCg8JytLPpxFU4Y2AFH/vMomiDGqrc89ux3do9tIHNP+azpUngohL70TCmw0
	uE9Iv1wfKo6p0gHzRByE9tE5+0Xb/PGO4F133q9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcbd574f2-3f022db2-0458-4af7-90f3-b170a3e87b78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 475e1d8b74e9511c040ebc19ebd1bdcd8989048150c859e398cd155bd4a4f732
Date: Sun, 27 Mar 2022 14:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648392238
