Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318F47B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 09:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650100258;
	h=To:Subject:From:Message-Id:Date;
	bh=ns9j4N+gnIYJRCuCLEQVs2q9VPZURFE8iq6XMmGdWrY=;
	b=PQhk0FRzN6bpWPEkCOvRwU4DGPqnwusWHb+oCWQGy9eK0IltwptbqbR8yILUBC6D
	wKAEvewQcLc3ueayknZO3PBqvFdyvTfMz8ULsSrwUwgXbJrQZrFx37yytAYeYuXF9l4
	Z2VQblOwVKGKCXOFtM/uYwLkr8hQXsx6wfhkNzU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650100258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ns9j4N+gnIYJRCuCLEQVs2q9VPZURFE8iq6XMmGdWrY=;
	b=H69eztasWU9lZcqyGMCKpWKwHiin3+klPfCramHekF1c85d89PgUKP8NPnponzPE
	FLKEMlG8SlBwrl7gls+FyLRNCZIKZe7ZrKz9qWkA8xPemoIDoYw4O5Frv9qscROhieh
	7mf1G4ZS9P8mAPno7cMBf5j4eKGkNwAAgEUH6B8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031a3c628-80f51f42-272e-457c-b4b6-f8602c67330e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06334a21fa422471983810ccea3f4d6001ee68d9257457e4915f3f663c4d32b8
Date: Sat, 16 Apr 2022 09:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650100258
