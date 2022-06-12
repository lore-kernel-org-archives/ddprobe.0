Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E501845
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 22:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655071979;
	h=To:Subject:From:Message-Id:Date;
	bh=e6HW2RwwBy8K0oA11n5Om5LtC26aK4Qn6YZFJtX7fO0=;
	b=CwJ/9i25YF8Az5H/dFzd9GahgDjuBszmWw4tZDGa+uCN8Xbimm/jjBK3bE/S5pBa
	5mNO+ozM3Fr3cf3ULjaAu4jAWzoCsEWU0aoMRuMpRuj9dURoJhJ9TuGAu30lrrC/t6e
	ZTUd66OtT8hLtzq1Ybk1JfcKGYK01rnUe4v9ABZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655071979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e6HW2RwwBy8K0oA11n5Om5LtC26aK4Qn6YZFJtX7fO0=;
	b=UtRg/7lSdK0Rppjx+ZkrECZN02rZoZg0EEBcypGnGhixGrdVE35Vi5yCqoU6cpWi
	AgV176CRVBX7KbzZRtfo4HpIfs3ZzX0KhGQ/3cOZE4nl77G800V8gzfBQLC/FLcw0v4
	HWNsI1tuM13ycGV4DoMpsJ8PkWhPlKw8Go3tObBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159fa36fc-47ebf6ec-f8bb-40c9-a7bb-c0889f1d0388-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83ed614a4c9f85825e1eca881a8b15772944d4cdf4db73d48d481e9818e7425c
Date: Sun, 12 Jun 2022 22:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655071979
