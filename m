Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396AB371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658732812;
	h=To:Subject:From:Message-Id:Date;
	bh=GFNKT05TQBwLoJckPSAAXnggGdPM/k840oipO4XjDBM=;
	b=SKef/XFjAORJaV9fREbKxscGFnpjC/xc+SAQenyYrJvS/t6vfsZk1OV7N7WdjHnD
	w19DYjRdx4tpHnqnEKfhtmYVUKbAXJSJO6M6goX1atPcSc6iWnr8TjrU0bx+j76+aKX
	jvtl9Tmbq8Gr7CQH16vQYSzGyAEIZA5RVayEagm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658732812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GFNKT05TQBwLoJckPSAAXnggGdPM/k840oipO4XjDBM=;
	b=RBysFJCXHcWs9MBIUWVkexKUv42ePepUGe6ZECuiqB1HNtt4lr/anUbIEPmRQAW1
	LVMRG3fWqiXEpCh/HLgi4O9x0H9EiQrvt4TbnEQ0FTcfF9uZY3GsouxBxAnKTRYQLwN
	r6FtLNlejnO5TPpUDKlelH+oLQVtZOBIm0tETcaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182342e1835-58e28392-5304-4f2b-ac6c-888f34006214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c31bc65cb3a4d1d77515e11e8ae69ab050318a6a32a6d5e0cf64618cd99dd2db
Date: Mon, 25 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658732812
