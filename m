Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED14D7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646165185;
	h=To:Subject:From:Message-Id:Date;
	bh=8LKOn6aYdAlk2WtcsVJGHnakzobNaOe0kpjd+S3cVZs=;
	b=hmPYhNi7CLxOCmvgcPUPOtj+6SnlvS1n8SXecsXYfELdRouMzKjJLwya1FcHw+Vl
	/G+V8864pTWasDXxoyHwJvRiVWK900l2AQIoX7VsYqzoOcDm/5ZxR6OFF427s3cKt43
	nfslVzQs7IkVz3UdtJu2BsesoZeup8qFff7/V8M0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646165185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8LKOn6aYdAlk2WtcsVJGHnakzobNaOe0kpjd+S3cVZs=;
	b=iJtH4oCKE+mg6tJDgAe0Zrg4fAjKUsgTYJAvJfzmWfiE9WEN0+8RHceYmMQuhFMk
	maGYjkt404aqrlwHyY6sKMhucDqczjJr4rTzzif2JljWuWj/SwSI9wTVYpAXBEwKKjX
	jIT7F5MsY6HDU9PQyJnJhZbPexucjibCxzhpaJk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f47175150-6144ab4d-1b91-4957-aca2-e26deaf6f5f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8194d7d0af7fb95241981f52a82c46d3c65b9163b2fb69cce115b7d2d4ab9153
Date: Tue, 1 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646165184
