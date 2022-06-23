Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AD31FB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656008212;
	h=To:Subject:From:Message-Id:Date;
	bh=biBQMj5oZPvNmEqX68i1zE6ledv4JxFx7etbibuhpdM=;
	b=lP62ygCM4Tu+d1tVCmNuGgGvM+mNlvXjkm4+rBuW8xlRpLshkOIpuNlMRGVv1TmD
	n0McX8QhpRJKBXJWc1OW/y3Uo5oPM/4LD7gEQH/c9uK0QtNX+I+ZfbDOMqvQmyXhaNK
	jVATOZLhT2Rr3T0w0Y9+7XrM0BjY5UztMTnCt4q0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656008212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=biBQMj5oZPvNmEqX68i1zE6ledv4JxFx7etbibuhpdM=;
	b=QCEHjb4TIa61/0QVOm6Mx2d9rsor86SWx/nXyPIULIPOnJQgNq2pqD03H/tLOq1q
	wrxseytL8z10yLo1anvx+xoxyYVagTMB8O/vnGpQ/5ps9ROKj+Ehyzj2ba1RuE0NWe1
	87oqJJuvtIuv/PKb+OakhT1Ee2OvVgNiEnDHabb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191c7ff43-d851387a-8b01-4620-8548-117261efface-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a93cc0cdc83b4408f258f3748a9d98d88c4a42acd665169144b67e25ff96fda2
Date: Thu, 23 Jun 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656008212
