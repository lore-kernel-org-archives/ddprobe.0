Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E42B7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657136212;
	h=To:Subject:From:Message-Id:Date;
	bh=4dFYyvS1HxiqUQ7G3TVJDOOc95H+4fcp3rmYVhW+LU0=;
	b=VU6bTfjMb5ShAvt5Up2PGttFdpILeIh69jelFoz00QClxNa8x9HKMEWjlQ0hAZs+
	rBz+lyZPWb+OSfoswjH/UIWFMQ6ryCnXIh841T24bHmvWLvYtxUJEYjmaCp/13fBOOb
	BQPCcl211DwavtfAh1LsxUGtATlI1koToDkDKjO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657136212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4dFYyvS1HxiqUQ7G3TVJDOOc95H+4fcp3rmYVhW+LU0=;
	b=FIeoAMEQlIQqyHGJTnE7UUw07TVjSRsqCXLq3P2JMHPkZYtqozvrz0BM4E7KNmhg
	XIx0qy6WejLJM1Xz9juypNKiXLCrZGlP6fyYmcNuy82kj6ZzjbzXXxrbd8gUmvIzOqs
	Mm6g2TuQDH+GOFbtqRSetwwhDNAiuO9LCceFqWTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d503e92c-c235c27f-3ae2-4c32-9385-ef64ff4cdb3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5287e0d9544ff5f3d55c4f27bdaf38b3c9e8659bb6bd6e75168d03bff83298ab
Date: Wed, 6 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657136212
