Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256A53201
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 22:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650841198;
	h=To:Subject:From:Message-Id:Date;
	bh=ph21lJ1Acs2j11kRn3o+pzSIgjk4NINS4eV2NNDi8lc=;
	b=RsH7oGXwWqWa5N+zwfg5sa2R5k0+szv+Ouv6gQDNHli+3TIJXWFrR/lNFv2TqcJ/
	dtaeVddmHTjgkTfqVSpgnbm3+FYyETH4O4eBI2cGg4QRS9NhYHjD8SYLGucxi6fCnHt
	3XfavNfnTlQsILhK+kfvd+X/zEQcLsRMfhGHnMkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650841198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ph21lJ1Acs2j11kRn3o+pzSIgjk4NINS4eV2NNDi8lc=;
	b=V427dO1lSWWks8WX1K+9fRq8L/GrKxyAp4qrn+YoSwLddgtPdpHI2R1lIBlQUw0T
	p+BDP6NwKIU1QpAQiQ8fxkcVItN+EFBQq7XYWKtR9+bKFC80EweC9WMINeUCH+yGRaS
	6q4TBp2c5VCnZJ9QNmzigJI8N2Z+m86ymJ4TR2X0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805dcd9ef5-57bb9ce2-d76a-43a0-afee-e211f928c1f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a064cc5805ab2c5b550730bdfa5713f344406eb04b11af14fb90a63c0aaa553b
Date: Sun, 24 Apr 2022 22:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650841198
