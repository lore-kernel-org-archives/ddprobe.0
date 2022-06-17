Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D227F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 00:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655424599;
	h=To:Subject:From:Message-Id:Date;
	bh=wYe0J3TMkrjaCG/cG37KcquCCbrE1AzNKTtvgZPqJis=;
	b=SQ6C5SG4izG+CvGDeE2Q+U5Z+GAb1FopJNHHZj6Lg19ocoM86y+cxt4h9Ga8Icp9
	4giFk04wbKbFICSSqMhW1RfrtapLvOqMcEOkwhCKLVpJc0VQvpbx96YzSpfC/A+1ObU
	iiRdkw/XdMWeCpKYELRz3aAAxiOIN/xCltXBWAhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655424599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wYe0J3TMkrjaCG/cG37KcquCCbrE1AzNKTtvgZPqJis=;
	b=JqKUlSmpzeOSdHcUHp8MVaARgHzUFSFGKRl5S1ZRtDE0xb7JXZ1Z3lq1cyfCTIin
	D2JGZcoSq594e3EkYhaJHz6QDEdtEEi012135zeZYBV2gTfcruM9Wu49tD6GT612Vb5
	rovW0c3pgRi//D5HKkKeyp0ZfZ3eSS6srYgmazEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816efec52d-ce30226c-1818-40a8-854b-d962ad5e96f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bc91c5d00cdc6944a9d5b6c331556bd5ddab867934afb94c3e19595e5a7d769
Date: Fri, 17 Jun 2022 00:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655424599
