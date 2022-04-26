Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3950D33C1
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 23:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651017358;
	h=To:Subject:From:Message-Id:Date;
	bh=jKW71Y6SEm3/QyooPB9wcEiq93R1711ePsjw7fSPRqk=;
	b=VHK/4zS8aNWDTlm7NcjYon05SHbj4FMsW8YEW+oL5kQAsH1tI+55LuZt6UfWyS1W
	mfhjSq2LZmt2F3uTwkpgFDjZwU91SVqsCHVxrQVcNmjC6bjVkRRGFKez2gSLLpzfZ+Z
	n7Qf1n4f3dMN9YUNtTtxq32ttnfdsFn10+sR1Hj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651017358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jKW71Y6SEm3/QyooPB9wcEiq93R1711ePsjw7fSPRqk=;
	b=MyZJnIysr9fT/f21C6JQYIKUbWyj2ZInPx+aVNczq8Vq11Fb6IkzJyBoz8pMUS+H
	Zorbwc/siWDytxVBEqtL96NrZyhFV76SZUMdkrCovjkAUiPOlD8cKhfDy0VRXupdIpQ
	pgWypQwUpIp9hWJifW/need6OosjMD84cHCOHF3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180684d9bf1-1431d9d1-7c56-4d2d-bcc9-e398757a6ca1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0abdf4c8eec69ba8792c2ca4796aaa95045b1557f06499eed0b25bd702ee657e
Date: Tue, 26 Apr 2022 23:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651017358
