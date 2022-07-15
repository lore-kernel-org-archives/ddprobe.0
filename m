Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E59B320B
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657888612;
	h=To:Subject:From:Message-Id:Date;
	bh=0gSAbHqMqV43ZYmGglc0UATphmFZy7nwGcG0+RHQo4M=;
	b=S01FnUPBiXytEeamuJ0tCjSmGThKPE2CNUpD0/uncxWq4tEvuPBtQnae4owRcV3/
	DpEV9wO5UWSxGz6Ct0yqR6MjHtH46j6v9bRvaMnMb93gfH8hxem9ey0s2gVb8oYAefU
	uMoogBTLUkyf5okImjAeRvhkcnbc3feQEiZ+rOPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657888612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0gSAbHqMqV43ZYmGglc0UATphmFZy7nwGcG0+RHQo4M=;
	b=NS0wsBJM5kgTVEpfhHRs75v9CAthXJa+bIxi9Z+e/qZhXrbyNFaOE/RTbb8YmHz/
	LHgZQY092vqc0v1D/kFQFRP88wCN+CjWRGQB+rv9Url5gKVImkH6jXLBYA72W7x9+jT
	J6dJAr/TLrn/nWBu1gO2qB2Q9remCVzyIAqAyYy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201dc9ff6-2e1e916a-f45f-4943-a5a3-090079e6cfdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f717e654da51fe22e2ca6161b15fc5f9ee6172502734406df579510e556b75dd
Date: Fri, 15 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657888612
