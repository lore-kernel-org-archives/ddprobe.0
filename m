Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01427B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658308612;
	h=To:Subject:From:Message-Id:Date;
	bh=eLJjJv9XIDgQayC2s7978dS8B1/EncvAFcH0vQ3l768=;
	b=htKl7znD+0Hvm7vz0mTvGT+urR/rn/f/yvzRi326j/pNfxfZhA5JkSEKyzIfcjG5
	0+0Luv9Yr79AzKmE8krq2bwk4TaayKnx+ZN/ybM0QhZVbjGLk76ATSEIh2euzBuZG5I
	kDDkMk1synupanXrm9blcSFNwAEyfR/DJf90g1ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658308612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eLJjJv9XIDgQayC2s7978dS8B1/EncvAFcH0vQ3l768=;
	b=DqAnJzaM+eJwEyj4jbCxUN1gHZsBilZsx90RG4JCOhe/EObprihF6NhuI8NCaFs0
	jqkrtUbDePyioJWZMd7A+/dfifVaLNOrFsITUXKbpbqOc4s+KeIbFkOrkdxCqGWAUDR
	ys/4YU+XiBXd8OWw8EM6ZEk5R0yQOQzkCUOPUL1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ae550c6-417ce933-0ea8-4930-884a-ef75c2ec3240-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 802d75663aa5b557f1b420cc2707f31b70b3f7ba04a6d23ecaaaed535b9062b8
Date: Wed, 20 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658308612
