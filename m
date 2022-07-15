Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1191E2F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657885012;
	h=To:Subject:From:Message-Id:Date;
	bh=hnz6tU/2BDVrNZyL808VdNaxORyx20ETkgVwzJPD974=;
	b=PHGeBmN/ZlEhoUlLgYmXNYw6k6KuB6Q49ttdBRVtTxHePNWOl6Ot88rswBJN5PmC
	CVsYTq80F5gHCu4LVstCFzjSyC7SOsNHoZ7OKLTQJ8D/cDCXs8/+dU8XApV1b+1YlpL
	bVKhtC77jTH2ANxKfoFU/lYDBEAzd6zm6VgYPfog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657885012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hnz6tU/2BDVrNZyL808VdNaxORyx20ETkgVwzJPD974=;
	b=WaINsJQH6TCDF/tdQ4rGjXjMf8VxJEGFSPAJTRsf/YHdADHAJ8ixvsDIa8XOXrhB
	ccbbvav/5pjEDgN2mr3G5L8wjn7LYL3pjv1TKLkX4IhCqN4TlVjrNNEynSaoj25Pnzs
	Cp84MCF+6vNwCyRaTSKpcrrfkaM5/lOiWtkz4nrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201a5b15e-2553beed-51ba-4f49-9975-d747d5e86797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 661262ba4629295401d743e14b8b0cee1dae072f67fd203fc944ea3d03be170f
Date: Fri, 15 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657885012
