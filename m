Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBA628FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645819584;
	h=To:Subject:From:Message-Id:Date;
	bh=Lrvuouejmr+tX4pywOvsnva6CYruEs0QYQ4Pl7N7SZk=;
	b=QfoJCRVoUWijPQAOBZLtBZD/1Aa7/O2QjmEsovTaPSdM5zBPgCjPJRLJvteIlPNe
	oxBotHMzauFVQb365lLgrZGYES7ZAvEon9ikThLW39Q4pHNVWRE97gugcvLdCXgPpw1
	ulSOGhRDLenVM9t4z/CidaBb8sfAqbkHH6530tWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645819584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lrvuouejmr+tX4pywOvsnva6CYruEs0QYQ4Pl7N7SZk=;
	b=PJznYMYxJBZtYMZrko5HjeMXsDE/9SDo9aYbMBRWNrXn6XoX9w3ZGCIVmD7/dMh4
	N4XQli0ujBRMKe6PD/8U7v4kS2Oq1oI1QDfNOJwIzN4Yfwnf+j+cI5EZ+WiBUZsa/n6
	LP6dvVgHQRg2SbyWaZcgJaI5LnRCCI9S6vDh2A4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f327de0f9-9a7fdd21-69cb-4e3a-b69d-425a6df28864-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3a6d6b22032a53f2a307c9b700859ac7b473e9424af3e9a5f2c264d0902a311
Date: Fri, 25 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645819584
