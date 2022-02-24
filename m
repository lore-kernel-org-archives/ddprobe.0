Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9197B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645665985;
	h=To:Subject:From:Message-Id:Date;
	bh=zqeuc940eqepSTU7OJI3bRDybFrpPGQJ5ApCj50mrrY=;
	b=dRMyqxUN5A9BVJhLHUpzMgo7yc3OE/u5z+neP0B4rin8YE+NKpUUiFRa01XUu2X0
	5gmGvJl3y1OaQlVPbo11o/xwLHfuzQpHCNoispqf6Cwg33JJEqSTeTmNY5lYXBovG0j
	SOWG+mpWsKKKKl1JXoNLdmYYeIEiYULQtR1SVoRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645665985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zqeuc940eqepSTU7OJI3bRDybFrpPGQJ5ApCj50mrrY=;
	b=fo1fFtdluDQCZP15ieU9tooDRJFNJHSRButJXwvL2XTcpLETGTsCC2rFraI1Sbl3
	EkF+1DyccKSRLE7K2StZQ90sI69M/vTWpnMvh64gDlQNrx7cNOea66bWTrfXha9WdFi
	UYjVK/ubWRrqO7VjlBPhikPKa9rWz0Z1Ow118uWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29562157-e0719f2a-30a9-4a55-99a1-38fefcf87479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eea712c9a73782aab71160d641914a51260e6ca8d7fe41e25b9e6b9afc1806c
Date: Thu, 24 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645665984
