Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE887E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 05:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649223118;
	h=To:Subject:From:Message-Id:Date;
	bh=jjull063t2KHar3cUhUyBSG00q/r90d/T6f6x9/z4/k=;
	b=kK6TMyvBl49+Zf/aezrA+NywxV2e1dk4lbYLuzX/5RdrdgzQLwvoEc04Sn3Zum4W
	XaOVF2qSd04fZUSWFX5hfm1fxEgllWSgP4KOcnLIZqUdeopB8MZwfsUsS+GDJWWnjxO
	ZaZoLok7Tz5FNdxi137RgaCQqaD90aswIdwxVkfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649223118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jjull063t2KHar3cUhUyBSG00q/r90d/T6f6x9/z4/k=;
	b=XqkJTjN7bO6D/VQIEktAILc97F0cbP1gC/9JdhOp4Kf22pIrJLfBlkTopHoYh5nn
	nPar8E9M5QfOUlK/eeCnDYS1oYkGWS9mmz7++xBLRvrsCmqal+Dspq2Nqcc6vpZ57DT
	/I8YQ6S3eBBYPZp1JoQwIgOsyxt/17HGbRW6dT0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd5badc9-ceb18101-1624-4d1f-b7c1-310d007d55ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 582f5caebbfcff15ce6737267bd6104149d274cf8d2ff1a99c1df0f8c453175a
Date: Wed, 6 Apr 2022 05:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649223118
