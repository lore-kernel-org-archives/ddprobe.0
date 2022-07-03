Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A301FB3
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656823012;
	h=To:Subject:From:Message-Id:Date;
	bh=NRZAnbbznt4VpAp6Jj+MQiJojFnjoGDDB0LvcFwMN7A=;
	b=E9YTYII5gkQAI7KYCczR3BVuPXqp5AroMbLPyKDWActDZ5M2A027q/3/FVAkRsUo
	2sUEh1dkj2L0EwFdsMUbS3x+c0XgF6uJdaM85h8u99zte0i0qheVBjgx55TFxKNz0fD
	TbATjcjSc4BidDVcut9JlErfNxFbgnS07+dv6+hw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656823012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NRZAnbbznt4VpAp6Jj+MQiJojFnjoGDDB0LvcFwMN7A=;
	b=ZGx110cS1GF8wDkKLAUv6rf8/30ReETkhMyT5XJEgquuU2oJz9/j1pdD+DJpV8iF
	mzUfrhkLnqyznD5T4TUxdi1nxGyTgSxLFOKV+68a5f8/PWOcFO9jLcbzwhuxoriI0y5
	XIWSB3zr1TLVJJnZvmgmP4xgkIy2PHqKRSLpfROk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c258dbf5-b108de24-bbba-4d38-b335-00511e58a3ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c615c87f601365489924d7e8cf2bfff8c175aec5d865b6513bf0acb8d9c05ae
Date: Sun, 3 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656823012
