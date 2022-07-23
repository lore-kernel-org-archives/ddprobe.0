Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E6E7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658564212;
	h=To:Subject:From:Message-Id:Date;
	bh=9F0Ysp7Li1ypUyr1nm53fR+EBaQPXQt9SzUvWCMazd4=;
	b=WrPMWPnoy4ow1P9RTlAmXB5rP7f0nvo6IfD5uFic4dzn6nPYSWMLkp/dPthOaWrh
	A6hYcUGeDNPmN0sn91ot/ddJQ1um/9T9rS85dBIuazgCzI07ePyG/DyRM6G/1T0Lc4Q
	WGfVYDhdm7l1CTR+uefoTgdSZg2taXnyMx9BnKcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658564212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9F0Ysp7Li1ypUyr1nm53fR+EBaQPXQt9SzUvWCMazd4=;
	b=fuiJ39syFyeAVms5HrwZvUCCWN06WilabLqnWhYoZ0hoUPmQ66NwZSd55+xkuixz
	XnH5w6rGWW9lRpMoWfEh89SncKFnNqnJfUWQmtp58u9o248zJy52qmY5tFAUGzmfB0b
	mlmyQcVPOK4km+O11DlJlf640hhhgcvnvP/jrM+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a217621-7004b941-7500-4d00-9738-babf65c49c44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 841d91d198abf7314244c6629b00d045bbb2c2ff49e9954ec023a7a129b7b82e
Date: Sat, 23 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658564212
