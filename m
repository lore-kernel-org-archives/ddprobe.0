Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA14E15AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657685812;
	h=To:Subject:From:Message-Id:Date;
	bh=aBJD+thMa6mcseKHYPUCoOf5ZhmHNVYZfchZ7JJdu8Q=;
	b=KxuER2qQSuD4XhOpqg1jQPOl7I/FRqBZkfPRD7RANNwTTz2bCymU3reZgRT0z/+K
	6pEFe2WVSaa/Q+a1wZzaqrA6d2oQpIko5d/pIUk38cHsRvS3x978gy6andZdbE3qpXt
	B66kcUkvuMfRgWG2lLLLFx4SzXBBVLop9fxhitas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657685812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aBJD+thMa6mcseKHYPUCoOf5ZhmHNVYZfchZ7JJdu8Q=;
	b=PpdcVE/6cyt7LPJ+W5s26WkIbu2ek60qVcqXymnTjJrVYey6Pc4cbP1SBRC+Qat7
	oMa8PM9CkpNr4WSK0dFKp7Np8IfXx4E8bssZ58hgJE6YDWOXPhVOuKYfn9DxaeRzzZD
	91gYiFI+Q2KGSxdn5mhSBDTCB2DpIasXhvQtzrOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5c62491-19d0a2f2-12b3-42d0-8b51-b25340a69f0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9bf7841c5b24ac032f305804bbcf513b199b966994432c4a21f6c7a0badf129
Date: Wed, 13 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657685812
