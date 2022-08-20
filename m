Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA296122
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660961452;
	h=To:Subject:From:Message-Id:Date;
	bh=li58EoCrxK63/8pWgb+t9wVPdQ5TUspQ4Ox5NIccBw8=;
	b=XMSfL7mnDbh3J+WR01XxhRDzp0P1w0FEKiTg8RaspAffgE6pnOWTz9Ui6cNzhBlS
	ybDABW9hAyLuT+QqzhXVXGgzLNXhXvsOVoRLD3L0Qej+d6ETVPIYcHmkTHFuMoDeJfz
	rVYMSRWrQ3gUzsZqJCnLbxkXSTmoEOLIXRbxBsxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660961452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=li58EoCrxK63/8pWgb+t9wVPdQ5TUspQ4Ox5NIccBw8=;
	b=YJ38EcVl8X6mmWtSgzZ41ppQ7TP7GDLU6uw5CBc/qGJ594DNEyvikQj+sgBlc/c0
	izxC1RdhdE2Ly+IWJKgjxrp/+fNgzzWGZDxslq8f6KZMjINA8ulYIYqNEz9MMCw5IYN
	L8dbmoAc6zY741rO4XvlYCAupg8pWKFogukXAGYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b904720c-9952f942-8e3c-4446-bbd9-bd55b8025350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 943740319ef58e9c3379faca38dd867aec1b578addfdbf4bc5504c6653eb6aa1
Date: Sat, 20 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660961452
