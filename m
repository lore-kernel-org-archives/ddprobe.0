Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CAE7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 00:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654044059;
	h=To:Subject:From:Message-Id:Date;
	bh=0EqOdfkjdn91vpL26ExOM6zbdL8iFY+YCzyuCp+bgmY=;
	b=eELbVs/dHrjZZ6tbjWmT81U7ISJ+/NJzG/PQuE9r8V0vy5W3JbeyXgBLaoYN7i0V
	E6jtQVVmB3BXS43BXMiWubLOlysRKAoUbyhMCCA308yeEavq3UQSqJjHzMoc3ls+NXH
	JLx6dQegCfupJCohZsxT6bkkT1l+zCMmat5geWc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654044059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0EqOdfkjdn91vpL26ExOM6zbdL8iFY+YCzyuCp+bgmY=;
	b=LwjASgam3F0Pc6z8KHfOVoFEQeSQrkeCYy8GXBWeqyQOhAylcXxu5Xsct71qjD/M
	LSrCsYBFj4ZWHhy0Ib0eJOSzz8aYX7iMwyT/tsejSHOFVHa1xgHkoXSicR84BZ0hOJN
	bVGvYjudfh4ys0oUdTyxbavd+xfomk2v7kmhDQzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811cb56689-82fa82b1-15fe-440b-b464-2012c3476b7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c9bbe9b02f0e6258a2ca29df8ceb32eee54f0b093c04d7fe7370b4d1a77d145
Date: Wed, 1 Jun 2022 00:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654044059
