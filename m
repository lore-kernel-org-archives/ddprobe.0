Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF4DA28
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 08:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654246559;
	h=To:Subject:From:Message-Id:Date;
	bh=ldg6sEE+fvxtoEWykMne6d4ImChCKFO8RoAPP+p4K3o=;
	b=MaCbBMXX1OQ2SGxEpu6PRmHsPkBDcWP03n+PooalHEAKE6cbzyqy7BU61/yZRkxq
	EuKchAD69DnK7FsoKUbp43CsDcbpWwA27SPdkW7zatPX4bIBkNRpHoael0GppN4QLh9
	DlijQFBWiLYfM0kVJBhAklXgIuj1ThiJ/Sgpigqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654246559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ldg6sEE+fvxtoEWykMne6d4ImChCKFO8RoAPP+p4K3o=;
	b=ScTCqUjXz+R3XQeih7RkmOVfE7KvxQUmGy/bve6dfEJ22bQ+7JfvsmRzGVxQn1UY
	7u6MXmspUIpKkqcB7kZWHsDSkH+TYCaD2Ap3lC9WT/tapKm1buwOgCvkODZ4cyxDIId
	OddxYZaaKUiXp5ndR19n9vDTc4Y+yZC18s1U0/t0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128c74e36-4cf1585d-ae2a-4848-8dc9-6dd45996e24b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9320082ab2c360f9bc9e2dd51dc8c08c48c79ac75db00ad271ee865c2aa51c54
Date: Fri, 3 Jun 2022 08:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654246559
