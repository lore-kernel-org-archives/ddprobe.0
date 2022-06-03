Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B92ED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 13:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654261919;
	h=To:Subject:From:Message-Id:Date;
	bh=SyB6eCpT9JRF+G53LeQypMahhSHjqaRWDz4hipL4ZQY=;
	b=P6+EeeF9V3D8jqmLn3wTouADexYZduMzUmSH6M29u2K61MK1k3fQuOUZq7vW1Wgt
	BI3feJfZCZ7APT64TvsRbL0g6ZYT1bMXgWGAm+5xCr3all+qyDDADOSRpttdHGbKbDZ
	w+kqcGw84EnXEbFDw/o8HmWXQO5pjc2l2Ch4C6rA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654261919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SyB6eCpT9JRF+G53LeQypMahhSHjqaRWDz4hipL4ZQY=;
	b=UQ2BR5N1fov2yD4sQfBKqr/2FPCsedBu3m7Ike0WrVRB2hreZsWGyN/XI8Pb289c
	jK9H4mA3/IHdEdE0Y5pnkyRPgYM0mvPXu85NY2QE+h+a+CgEvmJ/Pk9oheqXUkEJjya
	NCuVM6DGMrBV5c1XbCYklBqpgzZM3ZU7dmeZmOEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129b1ae6b-488f3ac3-9518-4003-adaf-f8cdb08506c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b174a3e2c9ccf7303ca67b6df04bf6cf63b62acc5b93f1ba4987a11502e25bde
Date: Fri, 3 Jun 2022 13:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654261919
