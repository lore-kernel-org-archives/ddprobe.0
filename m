Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBFD1842
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658276812;
	h=To:Subject:From:Message-Id:Date;
	bh=Or0pWXboErdeKil4X+Aw/870rG2zYAaXRF+prYs9iHo=;
	b=HOZyPhmZubi7FPW0RNC8dY3GmK+1yvlBMpK+UeUWgYCEVDPC4GQ3I7U4sCrWw0Y8
	JmdDRjQSyu4HnKXrQSPzs0sMm1x68uUBEmUrt1QHCtajqPLoxsD0nGx3NUVpIjX1/tL
	7KNvSGTuqzv1W7gVzAXsVNkJ6YIo3F5Z75CHDd/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658276812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Or0pWXboErdeKil4X+Aw/870rG2zYAaXRF+prYs9iHo=;
	b=iNw5bFZu/ZJgRF3RPbutuO7fUCt2ZH5XMLzif9ikKtvQDfn/DzRpN/JKZclDFcVb
	RK46PEm9dvik8o4FTO2S7obJ2KFnulJ/SsOsAe8EuZixHuwmW2rGe6NJ22W9MXRIc7J
	VfAugqAgJBjqIanRdolkrWX8B0IVKlS+W3XN8k+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219001607-c0916c81-b536-4e1c-a34b-1b1331390c54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c14fbbf8a1acf23d1e883096bbe9c29056a23067301292ea5432cb48b88d6eae
Date: Wed, 20 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658276812
