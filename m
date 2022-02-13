Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892A07A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 18:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644776449;
	h=To:Subject:From:Message-Id:Date;
	bh=4n1DvooUcN2PtnCOs2ii/n/XwLSXWgdtbW2SAjHnx2A=;
	b=MOzV/kk+Rs25cBF3KZRjHnmMVDM6y0GoVwgwpKRYmrReqt6WlsfmG4SNql1CY9z5
	85r1J5/Ly18Dg2XFocJVtEwmc5YtsVan485/N18vHyGNIjVwwwp72AilYx2Npybq5bF
	PTiVrZIrKHKOhMUBMHJVs8euo/hBbSSvCOqsfoxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644776449;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4n1DvooUcN2PtnCOs2ii/n/XwLSXWgdtbW2SAjHnx2A=;
	b=arJy6ftXtJBInJr+VrVaP1Fh67+8U7wOm4jKCZsBrPQdoSmiutBJUKS6JKVtSWN1
	fYzo5uLK2oKoiRzTNSafMW5wdyHHHE8gBBLguMh0DQc46PBimehPBDuEO2b0oMSa5PZ
	7FreDHQqyN5PbFlA5m6+/Po1s/0OVmCD2jsmIae8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef450e39e-9fc5fcd8-2bc8-44ae-8338-35d56f8cf5bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b47387f74d33d0cb3336085f3c60ec841887ece63b6586a563ff33a0c1c60002
Date: Sun, 13 Feb 2022 18:20:48 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644776448
