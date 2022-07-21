Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472CC23A0
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658375212;
	h=To:Subject:From:Message-Id:Date;
	bh=UBdNmxxt2oAllvOUCSuMB+3xF5lXe45AWZs9K/6pgIU=;
	b=QIZDa5NpRGo38rdolmsZCsYoxCl0z6pj0WQjSKIGxdAn82kvvb68P7KM0/73QP10
	sbzaGsOztnJuIUCIy54eFRkWtKGkYGCnDnjXH6uaEpIWTnNdm8xM68249QgcxPjS/dN
	Y+fjXKg7FTaM+4m0DsXV9VBpqFRYS547vYyQ9DCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658375212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UBdNmxxt2oAllvOUCSuMB+3xF5lXe45AWZs9K/6pgIU=;
	b=W9MZIgaKz8t5PUfYk4aASIRm7oxpDw87MluULfA74qm/EjJjxFvEuzNjPZAfsq6p
	PfwJFdx4UmWdXyj/WZ9wTk/1K9wIMq1ebPm4Ncxx4rv0Bt5X33Ns0cfpAAuTb6vZ/WT
	bC33S70TofZALm8sdy7G8UWJ3VUG3+ewNLkmJa7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821edd8cef-cb83e9f5-454e-4b95-8208-c77963ce87cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e2013c845f6a332aeb97d119c69eccf8dac7fcb94eae28fe922d7280581b4f
Date: Thu, 21 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658375212
