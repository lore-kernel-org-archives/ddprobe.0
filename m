Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8A13D8C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660755652;
	h=To:Subject:From:Message-Id:Date;
	bh=sChq0w+swdnqKVSQQypbGCh66nKM896VbcQHWq5Nc/E=;
	b=T4zvVKgX61u6Ulpu8swVWY+GMAc2uWfKxRRFFSpwtHL028yQV5s1Q01TFC2DCNr2
	7NxrpTidtbseOA/lPdUDZmloS5k2rhp55Psg6sNDa1Y5spp7JhfNUQRl0Qewt+kGQcm
	ULDpYKtU2awLnw7RJHSdhHK8tadRavEvKO711Mic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660755652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sChq0w+swdnqKVSQQypbGCh66nKM896VbcQHWq5Nc/E=;
	b=dUEQthGR1GMldJkB3PN/d2BGlKdykfDA7rjTp9IfCGpVflWQ0ayNUGydhDQHeqIw
	nP9ZJSLIHzyQadWxNOMbnMuelBNjBecRFtitLqOEduB2wL+AnOHz367IVrYo2TVZcCq
	2lQvEFh8jM8+Lhx24WolRuVOJvnjs9O9NNC2Y5pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182acc0307f-c72c3e76-c2bb-4531-b1f6-a0c380e130e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d728d7bbca2d1ab98d590c864cbf3e3782a7066497908b703be65a7d2a4e1ae8
Date: Wed, 17 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660755652
