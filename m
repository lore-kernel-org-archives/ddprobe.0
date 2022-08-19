Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA7617EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660902052;
	h=To:Subject:From:Message-Id:Date;
	bh=HyjsIdsCIQCsiBcAvtls30HUe68hyavJJuQAppMz458=;
	b=T98VIMD7JICRXK6wnNE4vJmgdhUyGk6sfzS7LX14fW8N549G9SV5KWuR+zphwNhZ
	8IQKli3ShidKjXAD2BWBw3U7LJWoqP0uDYVtyYA7eArVRqrMPA4YCF8iI/L0lauoCJO
	HSxvHIQ7LuiEEED8aeD6VfIRDKqZz8CIg6qBQVkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660902052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HyjsIdsCIQCsiBcAvtls30HUe68hyavJJuQAppMz458=;
	b=dFI6N0lt7cDXCzHdNdGtS5dixed5zWnNCtpb3xtf1pK7daK0CjIyMyOa1tH7p5Yq
	IhkqIIgJINc7y9vDFgutN8GiDGf7GhBX5ROg0MTm2KQlMHSrCvppLBV14py5ed1uTos
	DUoK+ziug20GyspOkQOtjonNH23WaPf+1CVTfpS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b57a12a2-873a3a6b-93b3-4150-b59c-57e7807a1407-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62a3dcd25b9a81cdb2ae03cf1f64365a630bcba5613f986d236fd80ca114f714
Date: Fri, 19 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660902052
