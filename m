Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE091397
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655066879;
	h=To:Subject:From:Message-Id:Date;
	bh=SjQmcQS0iE1g/eFISv3hUwFzQj7g3aC0kqEux0Xw3ho=;
	b=ABRyYRxqyk+w78l1ZVvH3GSo5h7FTWw7piYE2p5CXSNcByNYresgi0fvLixRfP/D
	gEO8/VOKW4gbEZCXTCrTEU4+fVqu4MLGYmlN3kd13yujUbVZIp1tdVLaInoig1jQzrw
	Ybkn0/3+qag5DKt7jZHUcb3kDqsdwcCiM2X/Ciac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655066879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SjQmcQS0iE1g/eFISv3hUwFzQj7g3aC0kqEux0Xw3ho=;
	b=kEJp2J8TJ1pqizEeAXrETIaXYSjVyzFZDEyNgSTd3DnRyAYnFrlsrKXn75GxaYZ+
	QcrKe7RWSWGI82d7UVkWvGvodTT1NtjzKlg8AxBEfZWSeRgGE5KMGnmS6eRacXf4T3t
	PgUhVr+zOPRcW7cvHvAA18EqKtZd60XeFEAFrtLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159ac6553-ccbc0b5c-a6b6-47b2-b32a-51a2552cc1a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8debdc44041162a6e00f920edb8e10e5b291666c0b244255e3402a78f4086202
Date: Sun, 12 Jun 2022 20:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655066879
