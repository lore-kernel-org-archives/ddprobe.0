Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9882F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647445585;
	h=To:Subject:From:Message-Id:Date;
	bh=BiX6uFyCB2T8kQCML0B6BZ9+zLd4s8ePPaDVvSJTNjQ=;
	b=gPIuz7U2aNPRUgIFe6iPU1Gd2NJnuea/dOiMUv61Pg3pMoSFk80HO7XHSBmYzTAy
	UKQLAyjotlTyPEsLSJDIBO7G7RLoFyH86+01tDU47oRqAWBfzgXB1adf02+0wijY/vb
	AMDXIETNf43dswXMHJBwTvD735ESCHbEqdpcJQYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647445585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BiX6uFyCB2T8kQCML0B6BZ9+zLd4s8ePPaDVvSJTNjQ=;
	b=WW1Eszx5ZRePT/CxH26OVRostc2BcxlBMeeL0W2n9AiA8vgJO+nSaZ+uOC3DUCpF
	JZw+RM6BgB1GtcGGMo8qKhg9ngHdlCcPmNBQ80Fevu0a7/d27q/uuvh3NMx8igZspxL
	wcn/KmjRWuoHndtT5LaKLmkLoaXFC5WeV25bmPSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9368abd7-9be96e3f-047d-425c-adc1-31e01d1f96a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8e642ea37fdf4ef70ba11bbd6a087d3084b45f3b076a8a4128fd0b3d450ceb9
Date: Wed, 16 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647445584
