Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BCD323CF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656855413;
	h=To:Subject:From:Message-Id:Date;
	bh=fO2+oVBI4TW8ZUSreFgZGHs+jM9teC5WFiMK81ti8/Q=;
	b=Hrq/15bgbeaaXt6IejbmXax4+UasBlfHHJ3VR0YwNCF1c2ZCHI8qQU8tHUitHhBw
	y+NYsn7MtHzAllxu1jr+IC4FSjCWGxoIolnz2n6kNMLRkCuPW+in4fUI4AmPbkRhz0M
	uYyikR5Lc2t98lbnFnk1zKrS5XMEqaMJnPg1jqKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656855413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fO2+oVBI4TW8ZUSreFgZGHs+jM9teC5WFiMK81ti8/Q=;
	b=M9pwzMkdr0Sbs5qyZcEjlKqUNuB6+VhwvEa/9bApfVdBlepOdZWjNyGUyCL6Tbke
	cC1855Mhey9mS01/cUGihkPTEkMwqk/5CC9FqFDy9iAVdv1XgP5xyrUuFY7VH4MxBsL
	fnxwQ4QAoB3x3SGTZcDhPadVR4+Ezb33ZcZQn+yQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4473e7c-d91c059d-4d01-444c-9f32-18f0a69ef50f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 388b15731beabf1dc57b0a6151e7237c3231e70070047218c927897b5706a6c0
Date: Sun, 3 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656855412
