Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A797362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 07:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652513339;
	h=To:Subject:From:Message-Id:Date;
	bh=OlUsNrHSZYvUOY4ZwwegVMh0LL8nsiuuZ8pGg4FM8yU=;
	b=Zfr4iMf61mGlK1qHwcurJ+T1LQey8ardnjWWsh34mCcTOsd3gjiX+eQ7JUnLytTu
	4APqnabeWXHfBCTL+M1PP8Rok+5TsSf6Abi8wgv3pS4FVaUm3wpQStcAhEP321cZRLE
	iTzha5wcFwqU1Wk1KgdHpgvdsge9H55DA8V5Pu8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652513339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OlUsNrHSZYvUOY4ZwwegVMh0LL8nsiuuZ8pGg4FM8yU=;
	b=Y4U2rVx0pYnd4v2CXJ43nKMBq1ZMlDs8CTM5YeATL9snYOYPvt+ZBmdVwZFS9pUm
	5IQl/da/E29KiKeODmBdk0thpva2NO+98WbHaW6lrL9WIy/kHw9iDJ3Wf+fzOa0Mf3A
	4IJb/xcQCOBp9+w/a+nVyXCYA75qq/QBa93LrNBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c178779a-e28072f6-a5bb-401f-9b97-0e6ce6654b35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f69dce25b3b76219d1d00e561b61e155e042c11d1876767fcaebe3a161df447
Date: Sat, 14 May 2022 07:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652513339
