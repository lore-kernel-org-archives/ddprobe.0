Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F2366C5
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648061785;
	h=To:Subject:From:Message-Id:Date;
	bh=eaaJHw/B6SdYcLKqZlmomrDLGFzh9PV/2sM4GmzjlP4=;
	b=MY8N4pfMGP6xFVB/HIiMC3eZPOjCT3Zh7u+7YdJRHs1k2Eaqb/gPCPD2HApuyynQ
	kjUEt+HtNgG1YganzcvTC9Y85OelxwllTbT7dNEbrbvVbqlsrobyu0xwelpYx6l0VLe
	Haxw670Bp92TL35WSYuzlfLZ0bu4OcdMvVL8C9vM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648061785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eaaJHw/B6SdYcLKqZlmomrDLGFzh9PV/2sM4GmzjlP4=;
	b=F8GjA+AV2ok84AqOkIer+KA17Oo/TTlcPN4ZhKC4vKHevaBPBVFjZFUJOI3KIEft
	T8gkZWBiMzpNSoK7UiIsOAkSwE4sg+Tu2NBXMCGEr8/TqruRj+XpmXDxg/foz6NSAsL
	v/MYZNOET0oGUsIIP8d5jlncyAPbcc5CAGjORPsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb82322d6-b1482fb4-82cb-4caf-bf22-d0b33e64978e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19b3311c101bf6f0d0290b9838e343637b7b688e76fed2dd2228879341fa0d37
Date: Wed, 23 Mar 2022 18:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648061784
