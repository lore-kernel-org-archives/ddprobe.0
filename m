Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D487C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 19:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654630619;
	h=To:Subject:From:Message-Id:Date;
	bh=R3TF5KkyqniWUJmrYkY5BbQyWIVslLh6V0n0+ZV6+GQ=;
	b=bUx95oZEI96D8yKszSD7Q/cOve7n0idpGjCL/VnGL1Z+nh4c8tcSdaFEUHSaSHZS
	z0suW0/rsShoPFWECUEotIZdknnAhLXFDN4c2xDuLRqgM7eenVgv5AIS/pKvImFXzIG
	/S1VhbBOZHNKSbGihjglB54MA7XEoV0JmRpICLIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654630619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R3TF5KkyqniWUJmrYkY5BbQyWIVslLh6V0n0+ZV6+GQ=;
	b=A8NtXGVgt1hoAwVUk4eyrU4/o/5Wz89OkX4zaJP2g9JDdX1Vt1UYe+/l2PHTG1oy
	jTRwSSxK9qnVLJHW5SfDCgxxrEx6HYpFMV9SCV7QT+EMobXChMWL8IuIw+N5xDgEkP1
	hhSeK6Q4zSYEN+i57QFe+qy2NBlzce+eAND/xR74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fab98aa-5f40d000-a13e-4484-ac85-e081c20bed2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ddb8c207c5b53a03c39eb38ff0eef69ac4c7754dd12c4cf6baed5185815a8c7
Date: Tue, 7 Jun 2022 19:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654630619
