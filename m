Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67243622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660356052;
	h=To:Subject:From:Message-Id:Date;
	bh=fe62tSsYk8EKYHSCHtXJPeRPe4/sQbJj0k3LXq96oX4=;
	b=aXYw5ahuJQ/JCWGOO+CP5RgH7Iy0U8cFj8Tg7vWXAcvR60SJMpxdMEchihn5jb+a
	ALyUnczXycXdCvi/k9/H75eQUl3n0rm+5ZhoI35EQYtqrM4Wj/xBbvGlNqB0WnQn608
	V+C3gZuVdebM4uJa6d1YvJBSRXXypp6zeed6gKVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660356052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fe62tSsYk8EKYHSCHtXJPeRPe4/sQbJj0k3LXq96oX4=;
	b=JzEELUbhPWhlyXH81R50ArDCBznoSXP0fDbEMEo2wSum+7dI0AEIJ+EveLyiiCpz
	KvXyh+bJ0hFc7YePSoOodFfJq7vhwJrGy+KvdNFnz4RNTay5M+6P3dRnFCRuo1YjxVi
	Hn/GQJzB1bw2VBc1YdTDpjyTJhVsxJ/tNB/IvA44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294eec65a-9844d8ad-a385-4a40-9e29-3512c53e225d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a82a1e25d63eb1bc4cf1e8ec5c50ad7019f263b026e5ab85b6d5c10f9f3c3d16
Date: Sat, 13 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660356052
