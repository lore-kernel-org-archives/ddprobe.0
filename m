Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840605EB9
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647820885;
	h=To:Subject:From:Message-Id:Date;
	bh=stprJLFLzPwZmH67dUAzZD/V2uoMrjx5oSZHUlttswk=;
	b=CNRzXRrpueGuBB+ht4Iwj2GRp1+DxtF/kbB+y4jcal2KlcesskErWFne+RzrbxCL
	nr37BlCSnQoFZpF8FRtt7mfHAMuMCfjxU8/hGFeszTTEcayL9CdA3vR5Zdsu4DbdVfz
	QOCzBIwW5TwzNdsoOqv/7vxusTG91jhqcMDF1mSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647820885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=stprJLFLzPwZmH67dUAzZD/V2uoMrjx5oSZHUlttswk=;
	b=j+cWhgS8yC/+ieVc9iZB992CR3BCrZsnvdicGCYwnsspQnxTXWLLR+V6D4fwvHar
	w90opD1xFPfkrX/LZE6jodGt/xtoYF4eei7nJHgqy2vR7bs77Dd1ENjPM73UVXchB1p
	/TEU1zDHGaDs4fDG5sJPK+9f1ujXYL61/gN7frbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9c74afa-ce5243e1-9e54-47c4-97fd-9397a60ae5ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74d8846142f60e724c50625cdbca27606293a0b44a796b2c383f9ee770142a87
Date: Mon, 21 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647820884
