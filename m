Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C0A3218
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 17:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653154019;
	h=To:Subject:From:Message-Id:Date;
	bh=Spubv4Jr0ZKV8AzCr7AzC+uoiYkLfmthqMO2v1bA9oI=;
	b=KIjFplQzyAn5Q20FBjYlMcA2bsC1iO1oLPBFpZdVBaTM+Vj6K9Ei/CzoPcJ7LOgY
	aJ0Fyg03r27cHEIjvhcdOotW2hCvd5RbSt4yz8YTykEh37cX69NYOn/fcyCTtpj2jOu
	/Y9Yuh5I8SBlT5fPAaIQnAomcwkOf8uByhErZf08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653154019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Spubv4Jr0ZKV8AzCr7AzC+uoiYkLfmthqMO2v1bA9oI=;
	b=PQbpehxf1cUCrHMT+DK8G9aVrwfv42r2kiEPh+nVH2AfFJb/RG4zt2aCUpqa2nwk
	MP9IJ7vNr/zYJKGkGWltCj8SrGbiahzVjBFmnhazZvRkIrCHO+fwNH8Uta7PrzbbVHk
	fr3DNne30DQ2UXLR6XszaLH0z/MbQ8hFdvNYGX2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7a877cb-f5264168-ca2a-43c9-bb37-1ca38332b54e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43c6ab7d843782b2080461985545240f22f93bda0fc9207a1a46794f5e815ab2
Date: Sat, 21 May 2022 17:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653154019
