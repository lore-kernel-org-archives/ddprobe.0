Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0817623
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 10:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649412478;
	h=To:Subject:From:Message-Id:Date;
	bh=sB/cYJQfWB6Yipj4x4Evare4kbzBcaIzxraY6LTjopE=;
	b=IVL3gcxORuL10kj9o87azNOCoECzqsM99KK1slGKr/NQGyr/EvMg0DPm8VXMMYxq
	XOXqpjcypfo4MHz2ZxKfOfi/AoxHkWrytFLN1rP2C7GH3eMR0X2/k69Uchm35KGnyLT
	vxfzmEuoSetNu/6YDo/IcqpDa0MLPVDe/8+o3lxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649412478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sB/cYJQfWB6Yipj4x4Evare4kbzBcaIzxraY6LTjopE=;
	b=LD3BbRdbZuo4AfnjJVTIqhgsQDKQRDouaLwU7Ox1UKlk61tOD31yv8lAyht3mwnp
	CTJeilsz4cyaEXssh8oDBLb/1TIAhVQHMcHsMInA1Ag73nCKWYNv4FrFfJmNU5Dz/ay
	I40RlpsalgRI0TASEJhYVSoy9+6wYffFyFwD9wb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008a514fd-13c04d2e-ba1b-4d14-8d82-e43bab68727a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c770605315f86e394e842b55b53939a3c57192bc9a7a67b864791ca9315bca70
Date: Fri, 8 Apr 2022 10:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649412478
