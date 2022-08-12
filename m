Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE36366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660300852;
	h=To:Subject:From:Message-Id:Date;
	bh=vvwJTUa5fyGy+32z17gB5JBc6pfmaXzo5yjgB7zPaT0=;
	b=joceBpvS2Mm+zKywh2sRUNQJlsZXC0oHp2k8QNOHUGadpeGNVN5d9WT2u46hncCs
	Vj4Way/6den6K4d4j8J3e3gbC06rEPKFjPTJqZXDtNG4DL5WvhO3NTuX7TjEK9ds2KV
	hO6O+0Ux+xl8n4xaurQ4L9i/C+EEXOAzO5C0GiBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660300852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vvwJTUa5fyGy+32z17gB5JBc6pfmaXzo5yjgB7zPaT0=;
	b=i1th4PQaj2ZfSBvm2J+j4W90FAlWaXh4rGY5T0ik2vy+YwDPqaW9vvLS4hzrb/Lg
	UVunOgJcNLa2YfcaiDxKuNwxhzo1ePLWnlAhKnjPz0Hyd20u+KlVx3CsfgaOELAe5P6
	Lx00Vl5yF1TF7DXcOl37ixkVmkCosB2k7VyE4HpE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291a47d38-a62a1298-4aca-4881-b59e-3802cbb33e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73281a42ab7586faf1e4339a28118b40adc66e7fef476d34e29c5c7e158194cc
Date: Fri, 12 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660300852
