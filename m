Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2E5EA8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 04:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655872441;
	h=To:Subject:From:Message-Id:Date;
	bh=TzkP6IowlVYkGIK/E6681GECTxEPj9z6sj1XsV4R59A=;
	b=Lpwu59V6ziMhwNYOdrx+V4635R/88XtW/LPYMmdpzRwpaIBr/jP5r4lfo5qAt3FK
	xL/afKVyjY+H97dFOhaye9A8Ze+JntTbnYMl7QmiEZahsNDLWUYSxQBXFtr9/yzdf0A
	44895uCLjGWo6GqWyyuDRFHAuxajVyP9xItYRT/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655872441;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TzkP6IowlVYkGIK/E6681GECTxEPj9z6sj1XsV4R59A=;
	b=eZHxeoNTkiZEPMUoeWTIxY6b4yVk17+6Eg2zZ7F0E873dsqWIiVeEKvQasOajxe/
	ty3WvxUCyY3zaiHJCiI4pPRvRMJ9iIM4yXM0bl966msf8FbzdVrSxyo4m4DvwaD+K0O
	9gCY4I0ykeLcdc055n0te+T8P1jMfY3b2KMlvVPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189b043f0-0ac89920-fd90-4558-af39-5c1ace1a6a19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fd0abd599e7d3544c992c6eeccdddf8bdf3a84637f4141373870769b4ee6a34
Date: Wed, 22 Jun 2022 04:34:01 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655872439
