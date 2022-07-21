Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1550B6AB3
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658442412;
	h=To:Subject:From:Message-Id:Date;
	bh=1wL0PUsl0m4qRPMQGRe1NcqTHSo6VOd6JVREioH5n14=;
	b=RXR1J7FQVtVaq0CIXd9JMlBaA22zm0GJ61Zl/j2XT55syc6EdVERiJNnge7yOo6v
	w9X2CPY82Kj97sPigP2mf11eyXRsTX7W8ypi0GQgYOZjE4DrCFdj2KVBk/AicGecfS8
	lsuGdV+6RImCkQVmZAgXG9Efcr6Q029Nt46M2DaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658442412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1wL0PUsl0m4qRPMQGRe1NcqTHSo6VOd6JVREioH5n14=;
	b=cb9LtFBuu0taap4wSCLDD/QDUgqJN7i/McUOa6vdS26wIRVQqDDUiTx5aI3Q8n3Q
	F+0PEOXUtaSakCpompLDvXio324ZJ+PXeM7yjWM/yz44+nONYUoSIMBvdZlngkl3kNU
	zEmbkC2V7iAIHsiEE4qJFIdh5uzfFhN8HzkRegMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222def0f2-e11f5da5-850d-404c-9438-e2549773d9f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 294f51a88f4367395488746370d6e9ca3292644fe11c869f994e37451d573ee7
Date: Thu, 21 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658442412
