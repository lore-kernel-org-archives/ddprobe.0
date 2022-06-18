Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3067B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 17:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655574419;
	h=To:Subject:From:Message-Id:Date;
	bh=WFZOFXH1oJqrHJENBKo7j1bicu0CIG7Oo2s2czUHxpg=;
	b=JVv8Yk0AqqimMllAcBPDemWlnANQ8tHz11T+qdE0dTkTTVd5RTI/qwLV8MbzduYD
	LxgKxWiPXkrfZ9BEqqwJdg2rW1yZjrKf8g+MFxvLrf6aMyUVo5jjW1zaYK0CuoupA9x
	E4kig+J9uGMmnzg2YhYano8rYl/BdruNdSC8OVVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655574419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WFZOFXH1oJqrHJENBKo7j1bicu0CIG7Oo2s2czUHxpg=;
	b=AQ+zu5poDG/Cd/8uT1k2+AzGYR3QxVX7ksRePR661wEuM4lFqaUSa169DP5CIH8a
	KlT7M6LJQ0ZqmYpNcxHIyr19IiFc3B9yyIdIYzdLFtwH3PY8tPyFJRFZbbB06/flcPN
	P96JfcB9tYsCJzFF8nH+pt5pazQXGA7biDBPVv7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177ecd73a-35fe2d9b-e2f5-41b4-a96d-235b9457b132-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e507cda4e51ae8a1c7a16cd0bcef073a225599c396820a7490cea80c83f392a0
Date: Sat, 18 Jun 2022 17:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655574418
