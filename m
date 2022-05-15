Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376427A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 14:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652624279;
	h=To:Subject:From:Message-Id:Date;
	bh=gAGkxZxd0OaP7aTajt8Qk6g3UooxfDdb+LN01ZRiHGc=;
	b=KjMx0WhnjBkZib7cgVVmZwOXU0NhA69TpyimbmkqnZbOzgAldVb+tYOHJiUbiu1L
	OuqC3CUJIkw1vAWiubN9otumbeBc7nc74dV/07VcRr8zpx9bYFso/aQkmLwJBt73zl1
	3gqXFCCcWdJU9k5/uV2Uv8taDK+ZzaSB0PfgcobA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652624279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gAGkxZxd0OaP7aTajt8Qk6g3UooxfDdb+LN01ZRiHGc=;
	b=g2jDnkZFSD/AqVs2z4H1n0/USO+ujKtUo4ynQW6BKCdTZ6JaBAH2yseljfMsDGq2
	NfEqiNd+seWsEq+UjfBjDwadxViBRqZrSKpriOJbltif/fBjFWIsB2hbbtPVLu0vJS7
	8W4LVFMg97gbgvDzUvDeDXrZ/HTxzW246GAtNC3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c81546ef-b7d9ed10-d7f6-4f6f-aeab-41eb914b6854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 421fbb852a457171439132dcf58d6a1b1c9985d5614e185eb669a5dd07dc8831
Date: Sun, 15 May 2022 14:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652624279
