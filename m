Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1D55124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645258284;
	h=To:Subject:From:Message-Id:Date;
	bh=iCTEo1dvhNsX0FqRu7u+gGdO4cmxP6/M3iWv4RCUB+I=;
	b=RG6qYJOJIMceAy5wTUOigpZi85EvBdrZVIHHatUcUvuJQ5Na5c/8ORrkrmwJIxRt
	mLO/qadW/3k0GptvzL8bIMPSxemwhduhOhH9vwdBMcqBht/m+EHddI81JOQFPrbJ6rT
	XYT75cn9TA9iWyOnrjOeKFb3cUMbztxmetLSt3/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645258284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iCTEo1dvhNsX0FqRu7u+gGdO4cmxP6/M3iWv4RCUB+I=;
	b=JMHetBPgPu//qT4HUkg72xD2F0oUiII/gwp15pot+mIky8bq1MrYbW2sMdE9tGTF
	2WL+gC0ixgIPLGNWEtV9H1RBjcGFIjmiGhm/vgj3NX9LTr3Fr6fCQc8ZPHgp7uvUWU/
	xefX1NNtrF/PVZ5D7t2mOvoXdmzpJuqFTqZA6W1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11091f00-669990b3-f17e-41eb-99c5-59a4721bfc0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6becd42ae5daeba134fead46474475fa3b0ffb8fb6f9118263c6f790fd966f10
Date: Sat, 19 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645258284
