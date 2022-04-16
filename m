Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F9C20F3
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 04:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650085019;
	h=To:Subject:From:Message-Id:Date;
	bh=U4xiWVIqUJESCUp/TEF9pBW6dSOMSGSx14pjq2IGDmo=;
	b=fh8DGxEq00B5vjT/LaCAYmZbGrzvqzvDKSRmJ82m0KomIcrcHm1Z2zfbPs1VqkbS
	ea/ovIvYmANDd2f8vwkzrNlZWnddZG9jYIB5TRr8WRoNdzaxQAmx+S2heaElT1F361J
	z5WWAJv64Xe3LfU8i2kmO2dOcUN0bxBKgd/wRhtQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650085019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4xiWVIqUJESCUp/TEF9pBW6dSOMSGSx14pjq2IGDmo=;
	b=kHTTPLkDH0qVS9iSwunMQniTo+tGj9SbFF8fCWVxSzOQr291VVRWM+Zhp+VKXGp5
	ojZXS2nhKPXHfDOmuqJxmMXfCkLCkTcZ1Wf63bYsqOC7eSaMNmNonKCivU3yPd6dHiB
	PcmtYkHw7C11KwlEX9RMDMX1buIrKTLbIVg2ohb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018030bb3ac7-c57ca593-67bc-4bbe-a00c-a1b4901615bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4453a2605ee25816a0729ab8c2b83d5a339fa14a66f1e654edc4a8c011d5cabc
Date: Sat, 16 Apr 2022 04:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650085018
