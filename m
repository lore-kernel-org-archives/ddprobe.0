Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861313C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659895852;
	h=To:Subject:From:Message-Id:Date;
	bh=6jtxlSTLOw/4TlW82tMynEgwiG0iNi+TSTHGtyURopk=;
	b=VYVIh6cg8gck2E/fM8H03HL12ADJdOZumlFiLrKxQkjEAXAsIQ7nI3ECBJyQkmwM
	hO08Wq0wZRk0Q/iLc1WO7zbkJHobEVItHHCcRZd8uZfxn9iih46b7eP93PF33un44t8
	EPcWoZpjvd8FdEMrTcForJEnyFpIFhyIkkYbBEtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659895852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jtxlSTLOw/4TlW82tMynEgwiG0iNi+TSTHGtyURopk=;
	b=jCfRZYknpEAD0BTD2qAG7bgl7/l0N2wCINV2HnTFBVVkKNoZMD26CGLYjZSaTbMw
	6TkTszLbBs6JbpfC2WkCX6feGOQCo00sXSts6L/zicg76xMFQr3Fye29nE2Cq9gm3Uu
	8XBr5NzYl+bUYy8IZMicwsh3aIlxUjYrFdrOA3PQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827980ae27-342d8b80-8ffb-40e3-bc30-af04885adf2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d52084f4c4b30cd7375f98f8af68b459969ad0725f540b1e501fc9ca1d746a3a
Date: Sun, 7 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659895852
