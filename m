Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90EB47473
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645710984;
	h=To:Subject:From:Message-Id:Date;
	bh=yyEo4S3RdlBBYfOYL+sLaf0HI6u93DvumT7JN30GNqo=;
	b=B+wNDmP1u+er0M2OSvZ/RpSuzqXQEqoZylcZ2K49L73cc4vfs+tT3Rm1kn5RgCt9
	zoG2vYtQ91jBdo9gtZiGNHcNgNcMgE2F3lKOWsCpnpBdzEx47WzO5qzpt8U8+nq87Em
	lLhTRVGBpwr2Qbfhh5hi3PFGukGAUvlfu6Ff3ByM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645710984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yyEo4S3RdlBBYfOYL+sLaf0HI6u93DvumT7JN30GNqo=;
	b=AaOvSxPh0mNZvzIBJDWHtsnSREneG8J/k5RWuxkf1RSB41LUlJNL8ruwfhJ905n/
	jAicpxSyUus0AZK7OPGqbbUFrihys7+IO072j0jGZI8SLgf/Z/fStGnRsoh0/W6HZM1
	CurKkKSpKGPHBGWtNqbxVtzS8C7q+/DLaFJkHQ1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c04c62d-5835fec8-3f3f-41ad-8b12-bc94e1ad78cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9b82ed0e9bf8935b3d20ea342c047c3aec771a4964a5a281fa0ed96faea00c2
Date: Thu, 24 Feb 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645710984
