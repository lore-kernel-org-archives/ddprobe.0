Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E230D7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 11:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650107038;
	h=To:Subject:From:Message-Id:Date;
	bh=IaQzxdJA5aGUjWR7rq9X4iXCgJ5QAmlJs0CXwTbikuA=;
	b=TQqSxTeIxIUE0kqcxOwmq0jTVsg1wWq0CSwtEM/tn70nUDAA+Iz9D3WtDcSO7xqV
	VK45pys9XHkVRVF75VPxyfGkmP5P8y3Bdq96i+6bXnUO2vNIIQgx3fjwv3e28fmt2cO
	ZsGwTZOVjws9UFDQk4J+/uYOng9qMTN1JD/7F0fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650107038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IaQzxdJA5aGUjWR7rq9X4iXCgJ5QAmlJs0CXwTbikuA=;
	b=aV5WCB614cnfgeKPrHuofbgGCAc15bZgALkr5T7Vb/Inpya3fscjS2JZ/LxlcqJu
	vXEPfe/rRYbX/0zAL9dIqNGE77hB5gatZ+XUXVif0dULQ6qbbkI7DjvNNjGu4ibFX8E
	r3UU7xRBC28DJaBuAV1FUVkiEOFS4nnJ1XSAUH6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180320b3a2e-2a1d596e-e53d-46e6-adf6-02b07d85e96b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d610a603f2af7eac6c086503ca224695dedc1bc900fc3b3ff88ec77ce4b2b1a
Date: Sat, 16 Apr 2022 11:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650107038
