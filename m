Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405E133C1
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 23:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651016758;
	h=To:Subject:From:Message-Id:Date;
	bh=bgp4PqXnOJfpvtq/T5iFsrb5sT4QBz0CQGH2SIDMyn8=;
	b=kgwpvbSKSqLwwGc8SAjh1jsmOsou0BRFTK+uSqDnUKk7J+kvwwGDIORgMjqbM2oZ
	F6ZxNb0qoL2dcJ7fr+TbY2FEk2Wy+YR0meJHaaGXyw5m6iAc3m+YH8n8M6xwg9G1F3V
	4y8gTT08hCxNcjonSfADDYqyUekIHh23NAPFiHzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651016758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bgp4PqXnOJfpvtq/T5iFsrb5sT4QBz0CQGH2SIDMyn8=;
	b=N/4P4dplD9F+hIFGVDIgxrx8XZJD8C+ffiP6Ih9AMqT+TdZ1M8F6quL1TjUvHXtB
	ApcpReP7DTCpdHsy6R5UUo+YkMKVc2koUKYU36lW2dA45y1wYwC3DyvicdF+LJhpr4K
	oShDOwhPJjsbigR3wSzRrm2yhh5oFc9XMNjob91E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068447419-aff29a55-a185-41de-b1e7-57a82543fad7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33f6045f3bd40a411e2ad017b0641b829d97d9f98b24a5ad1f59fc59f327fa99
Date: Tue, 26 Apr 2022 23:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651016758
