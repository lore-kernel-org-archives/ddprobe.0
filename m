Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEB97A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647277884;
	h=To:Subject:From:Message-Id:Date;
	bh=QMf+vTeJ2HsJIYz265BI3pT6ZZHgGjWDJaH5CA4jVWc=;
	b=KAGneIXGgBQmDYuMUSdZlz6nXmNJozCR5SYMPhRf2AEsY3st+hh4sZKi6IUQe3il
	Bv3ma+LMLeWFXzxerz2UtDogJSfhQMeCRLW9XXdJ093TY/jM77DTKyj3SVW/CvhAIdf
	UgGn6KU+ZLBGG6E8Gb2yfSn8VFEoDT9joVc1cBQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647277884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QMf+vTeJ2HsJIYz265BI3pT6ZZHgGjWDJaH5CA4jVWc=;
	b=UQ7bjHM+8GOxzWKxPWAge766BH1noH7pBgfyPRmg1wffJedPoYruCmUbJwPR4zeh
	oC8LB/OuXbDBPME6YRrS3mmYV9MkoermJ6HPLmPloJMj5cs2AvHfyHmDoZza3HSOgmu
	YJiNSP7refbbeIJO+EplNTxyJhj7IGzIc8wYvPqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8969c56c-c8e7b7c5-626d-4f9c-95b8-b506704e5f97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ff24afeff4aa75c91ba9eed23155f8bf49daa5b55e5794449bf2488f4cc4ea4
Date: Mon, 14 Mar 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647277884
