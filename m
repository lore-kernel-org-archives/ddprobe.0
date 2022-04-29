Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAD51852
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 15:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651246198;
	h=To:Subject:From:Message-Id:Date;
	bh=537i6xnDepZZrITCpddvifnd5vCA1HmjYEslvciN1AU=;
	b=Z2HSxzut91xTR5amv6DGOJm6sejZHRq5bM4DVaZTYQ3LtZrMEyKezzP8HGic1ydv
	7rzJQzgf6kWd5IKiz9bBFP8u3txuWifPVIX9COjtKSGaDjsMwKNkpyqeF8lbyoonZpb
	bcijEhWxfidQ432kvvNlTpFbtHCiavJsdjdpR904=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651246198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=537i6xnDepZZrITCpddvifnd5vCA1HmjYEslvciN1AU=;
	b=fdn/Gr23rMF6oq1BYls2Dz7fmSZZkYG8mamPU42HRlUlwCb0umWr0jvovElolRt8
	yy+fMZUyabea/QBN45G3waTeedCUe8RXxvG5p649T2KWwGkQnDCw30365/lQ5eG9DvJ
	raqr6YMFgnFQi2VQYNQXawcK8GKniz3RItTDtl0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075f16e44-a343bf25-bd1c-4fb9-a5f7-b49a1d679f39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd4ca2623f5a01d44630406875a939a473ca5c5492c10e986c1be160e53837ef
Date: Fri, 29 Apr 2022 15:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651246198
