Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E376D7F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 09:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651830358;
	h=To:Subject:From:Message-Id:Date;
	bh=Nf4kgc8+FPBxfnyL0KMnYMrQHQcVAMCf+NUO4Frdp+E=;
	b=hmFeh53Oj/gAIWgrP45Ws0rXUHuh+s/AjCFuellrqJPj+GkBl9vmJySKOlJtEibO
	02bePc9xO6TrVZEwKDd78VcqCMcMq5wg7xXl0fdhlzmsmhXUdt5cZjLLKPQurw6Jlg2
	AMaug/kgyleUM/Y0108l/2rsLj2A60DtD3Sekv60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651830358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nf4kgc8+FPBxfnyL0KMnYMrQHQcVAMCf+NUO4Frdp+E=;
	b=gZT5SpNz/T+Imqv99bqXvv8VwSatoZTymnLP9ZSAjFOPA5AEAzpfH4Ufc96hmLpg
	NqZATo+KZo9TyKAKwE7WXvhyC46oaADXqCdf+exh2xJsF4eW6tXc5xx+xX1BHblV/j4
	KZZHz4zGxweGjMvWZ8dEvQECMbW0gFQIJY3XNJv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098c300e6-bc9c7757-835e-48d3-b83a-d7af48973425-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd4e50ffc0b1ab01958af228e9a7f646697b2dc4e3fd6b9e7663c7f335d8ea48
Date: Fri, 6 May 2022 09:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651830358
