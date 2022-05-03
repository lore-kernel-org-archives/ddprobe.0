Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA99933C9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 20:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651609978;
	h=To:Subject:From:Message-Id:Date;
	bh=OlFEP4RXl2R1dUf+flyoFTFgGFq2cdFUGDXGMxSbZsU=;
	b=bH6mIdte8NKq1UNkGHX7QvRmbFExMJxqypcGj0vz4gkNA4MJpWoFz8AJ53qPNsRw
	3WPbgo+1sDgRGaeBmUPjXNGVUSyLVa2gO/Jl1+LWHrBVYEIkFBbdVSeeQzTwc1kCFHD
	jNxs8DBeNbLfHvqwSOXF9FHX/dCkLaS0wbkgPpd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651609978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OlFEP4RXl2R1dUf+flyoFTFgGFq2cdFUGDXGMxSbZsU=;
	b=R2iKJLukBo+PElEkujzSil78ZRmA8SQ0ojwpCLl6NoJRUYmf0Vj+gmSfkTWabT3w
	tKiVMtThjl1Kl2/AO+cSi83CU4U7znkeGBkZSRq/YzToeVVQ5i9Kvgz7n/OjUtC48iG
	TKhaItOPCIQKPwY8ayDoXwI1w9OB1eZd10wmmfJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808ba045b0-b8ca5c48-08be-4031-85ee-8b5d88ae52c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 856ccd85523633b9bfb3593d01dbee9c7de8dc926f8f6db24cb88153217771ee
Date: Tue, 3 May 2022 20:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651609978
