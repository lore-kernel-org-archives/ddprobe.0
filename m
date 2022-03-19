Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0561539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647684385;
	h=To:Subject:From:Message-Id:Date;
	bh=liIquYaj9X6whTjAm3nTULEyfH9JhEwVcLSEB2N6Tsc=;
	b=OrIja/wWW0oKVHd0lcOcSEcDSuVJI4GGMLBn8gCw3E2FpiVZuuhG+IiHZ0JAn+hc
	T4VwNSRMYq34dtEdebtFEfSVDpnzPfRTzIOzK6ltL+KdDnuYOUuhrZzr8oFfYUhu1B9
	ag3OO0+WN/iKgBfyvQfS6nFxdW8B0TSLODvMf2sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647684385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=liIquYaj9X6whTjAm3nTULEyfH9JhEwVcLSEB2N6Tsc=;
	b=Jc7yf+QyVH9x+Hm48GNyu3oYAOkWTodrxg8PjlAbbO6BYqKK/ElvQAGsGPCeIzA/
	J6QqQXJ0nn6sSLCWSAjgRem9ZBwdtkKn9qMJH02NnEmtRuY0krcQ09bEYa7heRprD7E
	wBt8Tsh6g7qKqtoNxrxRdELuF3/tMLpHxAtJDAP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1a477d1-33e8cbad-127a-4915-aec6-71a742ecfcec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60289403d61b354734f36a27bdcf3184f2c4345aafb59768c292581b0a45a177
Date: Sat, 19 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647684384
