Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0006936C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 05:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653283319;
	h=To:Subject:From:Message-Id:Date;
	bh=lvMKpsT9cu7mjFiC4E9BS5/ay3PALdCzsnb/lvF3kxQ=;
	b=O+YEbyA4cKwubexbCOJZHW7QXVTbWTSJTD8Ipw3y0h/3aVfliy9AIIeLPNBpLhB5
	3yS8KPDIZqclIOHPU0FNQ3hgjtEsvixL3s7AYIpyATbr9nu2elVv4YuSyFc1jnYDime
	J8XOvI1VO5NfwH4Vs/Z0soFe7p9cLUQKQRY32Yyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653283319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lvMKpsT9cu7mjFiC4E9BS5/ay3PALdCzsnb/lvF3kxQ=;
	b=gF0gAImKSlDNEhQjFZPiHKsaTjG2f+mtQdJ5ecLUeU41ax4tK4emSSaLF/mc+hwb
	9IyXPyKjBhAOPhr9OUG6uuWmYYlVtDGIsVftVNlUrv8nUvd/H39J+3Ku8uOl33VRAEC
	ImreT6LnBr5Uh+og181TDVpLDwJzWWWxF1nwUqhk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef5d6e07-97986fb2-f33d-4191-b24d-47ab3a1ade8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd62c10ffeb033ead4284e70ea65f84d5d1585195f48e3eac6636c616c528c87
Date: Mon, 23 May 2022 05:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653283319
