Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0D2EA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658916052;
	h=To:Subject:From:Message-Id:Date;
	bh=pZCUcx+/55G8Di4LWPLuvTyiXFIp6vWkKo4K6jnSDxw=;
	b=FM2OyeGz3aeLb10dTjOmDRvnP41r9ifD35pLjZsvbnLPXUuqXtaobQYyM7htBcgp
	JdXpVQ/pGTFuGZQ5Avzq4YIkpcSwxXJ/gBOG+T04QPchq5rJ3a1OIRYFNBKh1dU6JqN
	8j0TTlFd36zc/SpCG6y/WVcXJcP1AdnxCjy0b3DA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658916052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pZCUcx+/55G8Di4LWPLuvTyiXFIp6vWkKo4K6jnSDxw=;
	b=FOcx6HJ41ZsqizxSKA/F69/djMalgMcGWd5XN5R9l7j4VSX0KmxJc8Q31G2ipDrK
	mjk18/e2ECUsgwotQVi3VstzIEzzs10wNDTQ5Vn9W8cbAVpzRDe2qn7q8oXRCAhiq5n
	Ffv6u9F1xid7YM4HJTymLwhZWhYo1ZJzAeDcfAVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f1a1e6c-703f13b6-1de8-4342-8479-971551e3c41e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4c7720f92e80d2f4a41de9d305efbeb80a9085d986df5fc8ca31a2ccdcf9800
Date: Wed, 27 Jul 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658916052
