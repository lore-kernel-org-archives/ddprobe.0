Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181091851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 12:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653653219;
	h=To:Subject:From:Message-Id:Date;
	bh=fslhq2xuTGYPWQMKownK6fBXjvNo5fKdQi27XCmUe1o=;
	b=anAbwCv0nkHRXxaaLHf9LnfTsGONzfvPCXRmFvDNeBtITRXmh36gpi6Bp9E/JFwb
	pDLRO9A0gn6TOG72sxEtHhSkoW1P/sRLKu807vn8t1qhsxdJfwnoNBIuBuYnPRO/n1D
	9pQ4ApgoeVnw6nM6WoScncl56TbvR0rp+8tXEL50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653653219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fslhq2xuTGYPWQMKownK6fBXjvNo5fKdQi27XCmUe1o=;
	b=BlXP+UKeBjgEXgkm5fkK3mTiQvdiq8sKzgcwGUU05hKyhX5cdyRIfTuAF2qgEKrL
	1od/ZqjY9ynQa6aNs10wIi6Ul0OfGZ8pfe7y1bGi0+YfQcs9Cy2VIirevSLQpgjgLLQ
	46sse5xCMBJJVwDMBsb6TsaodPqZ8j76vi7u2hO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810569a7d6-1d2b45a9-5313-4233-9902-2ba376b817e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 027e64603e662cf80feacc625dbc792ecbda09777ae3b8d876df8a9c080a9de1
Date: Fri, 27 May 2022 12:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653653219
