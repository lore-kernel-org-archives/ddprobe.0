Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF06181
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646112084;
	h=To:Subject:From:Message-Id:Date;
	bh=SJyO6uykDtaQU8e/SXD1u+FgAnm2Su7CB+3a0QTqlhY=;
	b=ZRs/e/PYOq6b5Zv90WU07cCKfmY1vFAmSPRjXgIhy/NrF1sJKNMcF5mXZaXo++Jj
	XvOP0M8WhSrL2jQawSzb7JR1BrGJ78K5Y2deOdu005L896tfxhD8jTpohyx9Lsz7LeK
	cm3P5dDjBdc7dbd2Ue3sqBbWYla15CmLSgt2pVVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646112084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJyO6uykDtaQU8e/SXD1u+FgAnm2Su7CB+3a0QTqlhY=;
	b=VEmsplZelQyH8qh2hcwEPtrKP0TCAnio3ZyEGpFO71BHnDYWXX/DCFlggiyetxLe
	+hcCVwpmDb1ZG0Dy/c0JBDaKOoAb/u2FN+llcgBnebJ47deaxGD+df13nslwle0awx5
	GbNdGv/LI1pIT5kLAubXK2R68W4ulgXUZpvefmYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f43ed1306-cf3eef68-d654-4e89-ae9f-e63dc2ae8c19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc7a3ee86b6174932637038f83dfca3a0295c903dbd8f37b72497f98da86ae5c
Date: Tue, 1 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646112084
