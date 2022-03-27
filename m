Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C9E17C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 08:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648371298;
	h=To:Subject:From:Message-Id:Date;
	bh=ggLeWM3n7FSGYo074XU5z5Mekr0FssRr9Q8e6LUfFYI=;
	b=JeImOxd5webODM7hQF/0FM+DWBOqjOeCTXKR/5owcMU71iSoblxBk0UC1i1XEVfT
	Ibyb+eRs23elXDJlP+QsimRDnefM3AUzb/U+oztKf+IgxNztipGQYzDDoYA1J9Pioh0
	crxgotI8p+ofWNParS3OW/UjCF3E3/KaVeGN3pns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648371298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ggLeWM3n7FSGYo074XU5z5Mekr0FssRr9Q8e6LUfFYI=;
	b=C1dEtXixNh78I8lP96cW6TeGkktnt9Fqkbo+Q0R4c0WVeCO+XKCz35AkBkAyMca7
	t7DRrCxF/LwijnFth9YIAf13RUrCGGZnwd9R04WhvSdbYBBEhf4rbYRjvFjq62lF5B2
	saidD3tfvRVh9YQJziEaZYpGEml96gik+pN8r+30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca95effc-da839263-4789-4497-8e4d-1fd577553340-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a1e6536d0ffea9d2143a3beea26194900dc9f02688321ee8ad6e59140e7c734
Date: Sun, 27 Mar 2022 08:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648371298
