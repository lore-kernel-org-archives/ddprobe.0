Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DC12FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647419184;
	h=To:Subject:From:Message-Id:Date;
	bh=GCiWV/blICB9UAo832Avcc4Gz4mL5lp+n1NKKRPD6Pk=;
	b=CQu4iRAXza2ErU28SSkzJ0R9zr1sPRU8MbF4nQF6UVXjcohVW7GyxHYAJUnRD3Jw
	8GwR3WSswR7Ju6byKGCl/lJPGlYS2BsmZT3CTTgAkbZhkaF9Ai5K9s6xkZZgMvEj+aM
	Ho1M7gEJNsJhEFrzJP2EXb6LZzl1O7KcOxAV6Ygk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647419184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GCiWV/blICB9UAo832Avcc4Gz4mL5lp+n1NKKRPD6Pk=;
	b=dVKywMjv4vAQBObgCqZqbLSUkf9Gpimkeq82wYi+OOI6nxiLiDqbRERGqHtLXGaH
	Z15hJPxZ9QKpzncSq9YmwJVgKuoz6Wa7LGJlHoRY8iC162+tsC16G5bPhmJZuOX6zq8
	PVAu//AjgWCRhz+uq4MVtnlK9m/VmFuc3h2+yaMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91d5d65e-7dc93fbd-934b-4136-ab9d-4fedb4e86862-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9324f7f0528ff3fa8e117586bf912ddf1c96eb813160febb0caf22c373aadbb9
Date: Wed, 16 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647419184
