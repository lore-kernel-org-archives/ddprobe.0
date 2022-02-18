Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDF53200
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645155384;
	h=To:Subject:From:Message-Id:Date;
	bh=LpsmIp9YUmZ4gi5Ewi9Yd+ndRmYslNPuHMqTdOSQN4A=;
	b=D7azECPeIH7RO01V2qyMapAppRiNy8gnBGmeRhjLJg2tOVxWKxTQQbwaF+d5H9AH
	LL2BVoRqE+/TWDGOuGju9UoiI4GnGJacoZU4etnaLVi7osuO5uqN7Q91Rh71w6aBuiV
	PwSSBhwMhtVEgQtFNjD4nqKiegvub+KE688/gE8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645155384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LpsmIp9YUmZ4gi5Ewi9Yd+ndRmYslNPuHMqTdOSQN4A=;
	b=mCynKfbxm80BSt94koDtohbJ45gtk9l1398yAUT7qNGbGM8//ReSMXxCHH04NF1o
	EKHCQIHi7Y95YsvsGQf2nXtsbz9mLAJSoZJnzQDcwuC9Eq36KEdNR0BONN9znBWlAPP
	NRb58ZA94JgP7u7A75k19mSmxn+nTKsu66QdwCUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ae6fdcf-6f4f5d85-313e-43c1-868b-70c756208ef5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c2426e24ee3502f31182dcae3d1aec468591654d15c6a3a808ec1dbaec0d5b2
Date: Fri, 18 Feb 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645155384
