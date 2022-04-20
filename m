Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED0B1866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 19:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650483478;
	h=To:Subject:From:Message-Id:Date;
	bh=02qy+gJkBVkaNJdLkPdE5Itz7BQUAy2MDbkLPxHG/F0=;
	b=M74CGOMzOjeFUGAhNzDXZMsYYj7m4SNJ4hFx7St+qc5qrBEWX9W98ke7Rrzkw8IJ
	YE2S3LUh8xaiPmBr2otTteHHueLRO0Hn9OGQtjdwFFvapTgg+HDVMz+pQug3khJoBzB
	qJm3Jy3EWbh/ZKdGqYYJmt4ihlK2PsnbvpqZqykE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650483478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=02qy+gJkBVkaNJdLkPdE5Itz7BQUAy2MDbkLPxHG/F0=;
	b=CMQZHzc7LVKzrAmqZAwu6OU0AoX5Et9B4E0z2XKb/AAAI9NMmEnzkc9QBTzA7OtR
	i3v/hi2ylVUv0EEqvyZYwd/60Jey7xvYbyzbSxjCs+KeVvak0UVGGIwUB+9OepHXmNj
	36vtKVlyQIoNiq9cq6jlHRHOR3D+DsxGg+4NH2Uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180487b3ef4-8882cfba-c67f-4a50-a446-d16564713c0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f856b0ea957ce65c4e63c7b0e0450aae843bebd0775c912a8e618c7ed8f0bd3
Date: Wed, 20 Apr 2022 19:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650483478
