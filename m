Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690AFA23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647215484;
	h=To:Subject:From:Message-Id:Date;
	bh=cOjb+5/a9jzedC/ykkDxKm5xfLtUuqgs6SCNLUKCzgc=;
	b=a1koBH6q4+OrwTEt8OvgwlMRiCvsWEd/MTZ9lwTFKGMSQgkoIxiv7S3i76FYsx8F
	+slnP7uJWc8TnsVbe8Z4A/nsH7gnHsrzdhodDQuMlmelU7O75uZ5mbf3elxmTPcwX4+
	oolNINL4wYBvCIIPj1PC6bNTXhEmuOp0aRhU4eDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647215484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cOjb+5/a9jzedC/ykkDxKm5xfLtUuqgs6SCNLUKCzgc=;
	b=P5pYWLSxI8nIrSeR2HfGszuhAKX5QUacRCmsZdkqmmCylkX9E5/Bf2J3OyafRX9t
	s/GObSKsten03gH+/yTXBnNEvsN5w0IL/rdqh7zYGDhrsASe10cojHCp8VgZEwMIdAA
	c0svICIjGe+WRasL2Fq5W8yYxZ+5awGd/dUgorZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85b19f6b-92b2c2a2-439b-435a-95d5-cb609ca72b6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 208a1b0fb4e473c32600031da70d8a23f0f3256f14a5bd5f1a0553e6b2679fb9
Date: Sun, 13 Mar 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647215484
