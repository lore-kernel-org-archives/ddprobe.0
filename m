Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752801373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645734984;
	h=To:Subject:From:Message-Id:Date;
	bh=fBDAQN10+GJTGjvcPHjZ8neYJq44pZt060tsowcBwEA=;
	b=mYOGJgpCR92hkaWZQd3eeKmqIs2AT/HMuLKEzxo8oxQbRe13KQ3MsVpfAm06lDdp
	W4652HBoCMizH5bLPgvigsdnay+E+PNdlUho4YqaxRMrIiLhgA2NdPpx9udZg4JTJMX
	gSlBhGaLX8RR2a5epuynyZjf09rRI+v8m78sZNMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645734984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fBDAQN10+GJTGjvcPHjZ8neYJq44pZt060tsowcBwEA=;
	b=OjVPX7JyhyEWce9hxtS5e4OJpDYC6Mwov51+X/jA/y4nfHhUjbdYthN6eauUUfoa
	52fOVviKuioDbZhghXzL9YrAckDILS/v6CZq4Vylkxyq30YB7kTTk3riND8GyKpOMqo
	s80sVPSmg6kDnF5WFeusxa+t5neIqs+XU4BrUsS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d72fc3e-574f6f27-b4b2-40cc-a295-d4d8d3069eb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fde8045f1e1a7b0f332509f3236138ffa23e8b7c82db29a49a5f1af93d05007d
Date: Thu, 24 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645734984
