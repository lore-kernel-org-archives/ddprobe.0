Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0655317D3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 11:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649157238;
	h=To:Subject:From:Message-Id:Date;
	bh=CyqFwsRNvilQtb868SIFQyhccMFSnyMV8/nQIYIzpGk=;
	b=UzGp7XFSOpD3EW7obVJRPw3dcYo7FlnOAqJpCE9xu17DU6Sat0zZMmog6q1MjwX0
	5orE/C2fsRso12gLsxC2QOEuvjOSJxWh2wR9BdfizUZpBat11DjmUcKikNDTDuABBjC
	1Pkp6X8TRigUkMfRpU+shB/zTnjrUnC/2pzCRZyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649157238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CyqFwsRNvilQtb868SIFQyhccMFSnyMV8/nQIYIzpGk=;
	b=gdannRbUp1YG7HRIS/dkdxihjTJafeoeJWlXa7Hhm602Z1zljthZG6OJ7ZT2DohK
	Aa43Sud+JJkr5IgQIXlPQzT2uCiTgMrDu+RogoPR+kJ6dqlFK4kxe9ODK33w6HjnWgx
	g0SHe3Uj6/aB4729hklokkLT+cyTSZboYCL8++BE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff96e6e2a-f0aa9f37-db32-445c-8a92-36351b416fd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d89fe71252b9cc91d4b57cb42e8192a5878665dd5eeda81a68784f5e7b5c47d1
Date: Tue, 5 Apr 2022 11:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649157238
