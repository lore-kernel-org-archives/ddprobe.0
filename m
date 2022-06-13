Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D34510F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 05:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655099999;
	h=To:Subject:From:Message-Id:Date;
	bh=LilmkZpZGNeJ+hdD+rX5lOJmEsiHGSg3JB5D34c7Fpc=;
	b=Cy68MCklaxvkMm6IowrYU/6lt/U68yTcYF2bDyuJwqhdhv2TnvHGHnzURfGpu70V
	tWfFvQgBuQM9dPPDIekYiber3qkKjh2yeJgKkW/vzdsvfZdA5iIKJxx03vPMGToy8Oe
	FppmLHcWd90OuXeCGjRyAm0F8lJPqHB9XYcsjtYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655099999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LilmkZpZGNeJ+hdD+rX5lOJmEsiHGSg3JB5D34c7Fpc=;
	b=Wmv4ZYOvBPU/ZLcIoBQaC0B62REUECJEGdgpuP4jCGTH5rAYEnK6nx/C0qopXHW1
	fhOPeZzCQ0nCbuNESG+VdiXpB+4Pg6LQM0nheU2yrCaSaAdNtJA+UegmHzjntI23WT5
	F/1AYVta0oYiM8Nd0rQdsprJ8sI/fLoL6PyFk0hU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ba5c40b-8c5a2c43-4a2c-4a23-b4ae-4ab7aa6bf804-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddd140faa297afc5c800e3efaf4843f5fb379581692e2f28c62e88ff60313e31
Date: Mon, 13 Jun 2022 05:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655099999
