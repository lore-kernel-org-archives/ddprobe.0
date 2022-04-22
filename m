Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D01C290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 17:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650648778;
	h=To:Subject:From:Message-Id:Date;
	bh=JjuERADXTXw0U0GJq1Hyw8aFTRcieJtVyq1OZXXUCL4=;
	b=LBRCo8Wp15d/9Ve19muHJchNvS1cm52pwGxE9cYCEHyHHD9rainvf9Dsmx1KjfMg
	5vUX3BMpx0+qu85ZVw+v4UDjKdCrqf+P1eLV31nbf4BRQ9o/v2n/JTCHYyvEYM85Fdw
	UyNq25RvhSVil4UP/yuqpizcZEZJgO0qflGkxJxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650648778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JjuERADXTXw0U0GJq1Hyw8aFTRcieJtVyq1OZXXUCL4=;
	b=BlVe+zsq97lp9AA9J9kG6U0/wAdCnPWiE18UgF+aTaz6vrbPrNLDcJkdhSS+fq5r
	6u24ThaPDKcg35FWB3cv0MeqKpq8D+UW4wzDORpFlWgs9IJRoL6drKcMqf9Lhpq+0q6
	evU9nX/nw2PXwutUTjA+G4ZclRldiGuGCo0IDjCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052558616-81a0255c-1990-4ce9-88e9-07b0d348c5d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76ac3a7d4fc302dad4730286f8d41c17f69e5cc5eec995276eb595f0575500cd
Date: Fri, 22 Apr 2022 17:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650648778
