Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C4C628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 04:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653365939;
	h=To:Subject:From:Message-Id:Date;
	bh=FoPS6awzgQiC+JAsTc7TLV+twMJ3kfVYePHvvzNZoWo=;
	b=k+arXabPdi6o0/LBJOp70DUBtEVx8dGIqNt5qmSVlWPol+KoyBT8jenlGFCFowdm
	e19qE2DyeyHiVtAw/cKLdBMIXQHCXHRQAds+SV0gh6jKOuEWQZyp4D+JVFAPnxNfD9n
	kupGwbDNLNoySprj29Y6Iac/t6sC4MIw5wTdm1MA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653365939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FoPS6awzgQiC+JAsTc7TLV+twMJ3kfVYePHvvzNZoWo=;
	b=KQJ9fTSS3hNOA2981RzumWS37nisksiu8EfmhAe/j8u4rCru3JfWGNWLeai/inc/
	A5fiQXp8FMYmrQxkxopdDsJ4eg91fxJMg8Rtl5nwYYnd65mwUh/MG5ma40qYQreWWZ5
	YfhS98FAjM4aZQPZAxl2EQKLaJBxAQ3MuIXXaC8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f44a1c5c-548bad45-c446-412c-8658-11a4a0121d6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89d0a87095546dc8bed0c6b0493652ebe9365cb6b30b6d99e10d219906895816
Date: Tue, 24 May 2022 04:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653365939
