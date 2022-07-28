Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB9810E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658980852;
	h=To:Subject:From:Message-Id:Date;
	bh=Yad/NYMcZAWAbL9jkQpeMILdJRLQYcfJKu+fc34k8lQ=;
	b=cBKYrfMb3uzDuEbABSAjRpirnkojQlheuGE1+PJaKGljIhGtVIrfoza9EBEW16v7
	S99284CRZWK+9qZLeXUqbIR+4uHToPgBm5PGryDcCR9I6F1AZ5t0qujDDVW0bUPG+60
	kOHAk9I/str7ZuDglP4UlPEnIl8o7N+jb02kffNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658980852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yad/NYMcZAWAbL9jkQpeMILdJRLQYcfJKu+fc34k8lQ=;
	b=K7J1lr2rezSQLHuSwPM4Uk/l/jIvjNycRwxS0l56/B4KZGyieBb3JcYC6stW3Ed0
	RteM7bfLpmcpVlvk/PcDLsKMbk+5MnZNRXGyQnqZ1AWtqSFNi6uCmoujBh99BN7Has9
	bZSGVgKVlP3NOwTaovRPeVR0A0/LSe9iZWbiHrqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242f6e356-75e4cb23-197e-41c3-b2ff-2a9750b0704a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91ed4872e0ddf5853b6fade19d0a0d0c882c2648b7d852732c509e19b2748943
Date: Thu, 28 Jul 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658980852
