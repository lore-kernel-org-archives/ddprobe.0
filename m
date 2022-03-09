Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ADA7A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646805384;
	h=To:Subject:From:Message-Id:Date;
	bh=eRjbKH/xYHitEpZwDGjkJIYtLgLNklQuBsiNf9EmS04=;
	b=UleXYHWUEDHLjTlnxDk4IFhKl5phVG6C+TYBSAbObGYsVUQpICeZyb7ym/AdgPTV
	jQg+TUdmeU4hcSFReibeJZm9SE8mPV2b0LRJ+bA00kxwp3NKAP+O2C6VDB7zkHSiCtx
	UZoHRSbx/WL15t3LOhflv2Vivt6ChnEPAlLPfMGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646805384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eRjbKH/xYHitEpZwDGjkJIYtLgLNklQuBsiNf9EmS04=;
	b=bEKfOwgCMoujQXljqqSLEGJqMpMlPdUIHGpoJNhmbTqsZuPzBasdXzsuvhhstwJt
	wyyIHCw9I9t8CBda/PnRsoONX9L/XlqFHqADovgu+tppwFkJ7ELaMxIwRdPHi+zsBwB
	j6FBVscIu+HxwOWsFcel4ia/jq3kdV913uMqb6hA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d3ffe38-b3d0dc9c-3975-4247-8c3b-7821ad8d7ac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7b609ae367e56935606eddb5a3fb56154cfe716b170d07a50fc713d7fea1678
Date: Wed, 9 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646805384
