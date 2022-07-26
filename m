Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620AA5385
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658853652;
	h=To:Subject:From:Message-Id:Date;
	bh=PqFm+j3FxvWgtTpvY+wQdGGg2kF+/eiWMT9yOvY9tc4=;
	b=lHkiUfaakzws6yYqTRy7GWhV14XHaj0pUnOybUpRiHn6ErZBTI61eujYP/O65Bx9
	JqAQg7MFlRHgyWfXRvEXwnVH3RcIPP44jpHDRiy2SAfIBbHALV+MkIhxAkIkMFvqMuv
	g37DrG2LOx+Uh9uLbb+C5zibok2mOQG5/FXYLd4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658853652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PqFm+j3FxvWgtTpvY+wQdGGg2kF+/eiWMT9yOvY9tc4=;
	b=GREdJhX00f7xo3/i0lDTyqW9eUHq/Klpd4KGQEaBShUZ+agVjlvSbb7FOeZ4PNfQ
	3yUrxHVeF7R8e8D2/Ao3JPEC+L07WYpqn6QS8G7ETX2xzfFIzIegKXJvVLySYCIIuJM
	Pu7xUNO8V0JmhSHpWP2ydlJQaHkQTnbox38JBC5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b61f826-9247e259-eeec-494f-be4b-991b1d3ca827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b7ddfc1fe61d0be95ed6bebb9965a6b2d1168dd5925dc0d7a5e2af259b8a6be
Date: Tue, 26 Jul 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658853652
