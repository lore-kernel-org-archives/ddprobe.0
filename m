Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467E72F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 16:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647534685;
	h=To:Subject:From:Message-Id:Date;
	bh=RId9aNqfqlPsvusH345uL5NMbOton2DpWz9FwKWbF34=;
	b=bjf6AIZ2YPFMorzCKXfsAH3QwHk7Z5WMaxvmf0hA9DK8rFEU6Rx/9I9cYM0I4WrQ
	qFXcrryHp+WaQ773CIVH6z8ToWF29Th/O9Xg+fzGJBiv87UHfWBSjfCavPsu+ukuOfc
	QWB1RpM2X0m0EFjOqKNm1fsFMaJ63mzRQpn2Ngh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647534685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RId9aNqfqlPsvusH345uL5NMbOton2DpWz9FwKWbF34=;
	b=h4iXRf9ioCz8ryscyIrxAqvuiA6rehbhMj+pbiHjPCZxg0jGUygVkdmTKURMPp2q
	OP8BmIRbNSitTdvgnu7F+BMagfLj3I1z15soD030n8dVBUb2ZZ170D02t95vGlijQDz
	VpirsPHFDAzAUglcBzCElmcxItTpzKJShzwF9qak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98b83a66-cb248dbc-5e13-4a8e-9a0c-b13578bb0410-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4137dd91a59f14982d5fb1d9a6bbdf2e35b9a16d0cc9c547aeea2db5858365a
Date: Thu, 17 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647534684
