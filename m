Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392162F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 20:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652561819;
	h=To:Subject:From:Message-Id:Date;
	bh=ZuXUD/cRW6pyLy9DHSXseKXVcmLeKb1ZrBPnUzmYLxw=;
	b=QSVEGt941z3r1EshekrYnOEg1doqH9nxIB92hw19FPGq4XXJwYhTyXbQ23DwOpu0
	xt5M6yHT9vdUWrPC4uGKy9T+u2rsVyrjBbY2usRW8U/OOGBIZ9PxR6xh5cbOn/P7SVV
	omnGhbmDLZEYV1hgOe2+D5LnbvHQ4ZkAHKziopzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652561819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZuXUD/cRW6pyLy9DHSXseKXVcmLeKb1ZrBPnUzmYLxw=;
	b=IpUiRYaOt7uX41WI9t386nnkcu0fiX+9FHUfb15P1EquWC3OtIrenP1zk1Fq/89V
	t+TldaT3qtHkanUk8NDqKpJBCE0GgyKYf0X7lR8SiFR/hjMd3pNjyRiXKyMmfLvAWr0
	bubLsAudOFrgh6nJYZVKfZP0mv2B+wdAFHJwfzqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c45c36e0-d9c9e347-1b99-4595-862e-69f6131b4dba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f53ab234bc42b3ad458c1450f84482bf3aed2310191918785d9429684fdf88f2
Date: Sat, 14 May 2022 20:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652561819
