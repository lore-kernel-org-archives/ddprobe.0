Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B187A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655301959;
	h=To:Subject:From:Message-Id:Date;
	bh=ihElkNlF90uM59zeXTUrWsfL7bG+e2+OOE9fj16P1nc=;
	b=iIH/aRbQJL5PQHv8Ez6eiAbeuMUZGmxqYMvu+sPtrN6KinkPoQfecDQWjwCqekgs
	TO//Suqgk7RyioTqtkeJrQlnL/n4mHUZqOzF4PSHWJkbtiQhId5k5z46D4M3+6tgqr0
	+tQ+WUuSwFTf7SZ0xZY6+vweJMuAmfkGQZEbIRD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655301959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ihElkNlF90uM59zeXTUrWsfL7bG+e2+OOE9fj16P1nc=;
	b=PfyhjTANVAWL+QF1HH1O6Y9yzsjfZ4lSniVCeSgDD2gIBAMg2UlNCKSxxDTOzrCh
	Lt+D8ZdHqFQJllImbCQ96U6DzImhCj1JbTWjvXYVDqp1sdDbhLupHfeYnvL9CPOAVi/
	fuLKwJNnBkj9GR9+UE/XKPLS821/Wy7ObHxUbyKI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167af6e95-bbf74ccc-59ef-4fb4-90dd-a484b50be72b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60d7bd91ed2b0855e2ca64aa304b10fd476f3c9231df37b71ff88e9e04820541
Date: Wed, 15 Jun 2022 14:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655301959
