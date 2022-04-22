Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB432F25
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 20:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650659158;
	h=To:Subject:From:Message-Id:Date;
	bh=r1ru3IgvXZLQ8DBqIWPWmSI9qxnsCow/XgRAjRO9hP0=;
	b=b+rsYsAM5i3f6vWloYvhIiVTaXbJmg4qHyG1waJ8Vr/5Bb1ohKv+MnwlkE8DXltc
	VyYiuzY3/t1gM+Uw+g5ryB2bwLhJAjLdkV3AtGBBLI0TlEGFjgLlInXz5KCOAayMexI
	Xa7POSxDl7hmRiTXlg+cH25p9l0J3MHeAC1sEzbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650659158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r1ru3IgvXZLQ8DBqIWPWmSI9qxnsCow/XgRAjRO9hP0=;
	b=cZykQt77dXAO/2ZhoOIPgXfAfoeSuL67XxkvBSpUzaA6J46TmXW4ZmStKiVEyuVT
	ZoujEpamJAVE3INXNmlw2N6+zq21ZUC6fAynjwEa6Sec8pCn1BrUc07m+PQ6SrEBWOJ
	0++/f2yOWB47BSzkfNNjPcTl+nzGIIa8Y2kdgOrc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052f3e985-8a689776-ddae-474b-820e-78c801db0064-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bccfb3ab09740a5d3ecae10c1b1dc3393e5fa7d117c382089973c14676ddde4f
Date: Fri, 22 Apr 2022 20:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650659158
