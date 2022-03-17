Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F8A2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647477684;
	h=To:Subject:From:Message-Id:Date;
	bh=oiEPKEuMRqAUxVMn5ygZBgSmPC+SzavfU1FTV4nPUOM=;
	b=DrfW3smOaTlWXgyI0rgXMURoNjXeX3aaWqVfdkYUy16Hyw+s5zqoFemoeyIYSF6E
	3sqTtrGmUCJu1Fk0sxqvFWn9SxIEI3TbVsjY484y9eZTHCtXAboHt5kNsPaXgnj/Srr
	jTQ3LyUt3Ceiy4uPNuQV0lYF/qcC3S5ktBrieXik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647477684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oiEPKEuMRqAUxVMn5ygZBgSmPC+SzavfU1FTV4nPUOM=;
	b=i/iMyMh8jv8qEHhfV0UajeTNToiFp3Hl1AoneLvbcwxI76+a+nuLAeaHR1iyNhHB
	zG4YeDFlO++5m5uX/Cb2gLQdsV/WMrtvVQgNPokQDBk3VNsN7p74uQewrnaptf6unzq
	yGTZbFC3+g2g+oOKtxGkk2X/62s326fnJyadYQh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95527a1f-04b39386-a689-4c3e-8cb0-dc670bfcdf40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdaf96d3f14d942e3ee7ec59efd5f969144613f831e8e38749747852651d1182
Date: Thu, 17 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647477684
