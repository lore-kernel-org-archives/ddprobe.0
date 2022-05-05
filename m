Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393D57F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 04:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651725238;
	h=To:Subject:From:Message-Id:Date;
	bh=GwguD21JfvwGHY+bSfxFjMv1cvMs8KWmCX/VYoBpYZ4=;
	b=Zf8HMhumRe6ZXUd+24uOflddcTvJS67CFx7+Tv2wGWemzOC9FJKTYE9PziMf+B+V
	9TFszg7KqeRxBNodOTi5laaxsu2RypnfbddK+8ADSTMwQgQfY+Yn7a6PlVtQf3aE16M
	3ObOAtSBETJrfvu9tjGAw7z+sNWs9MLvZAsowDfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651725238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GwguD21JfvwGHY+bSfxFjMv1cvMs8KWmCX/VYoBpYZ4=;
	b=IK4dsNqG8F3SEOG7pfWAeyLcQibMXFVIt9hdagauvS8o2h7Yto3Eu1ERiFM5Ps/v
	+IoEoOchSLF0wcrW9z47rtCpLg/T8hvE2gFJ8h8LQ0CRKAzIXtHjnfUOFi4jsgazTMh
	SYLcfvcblBY9uVliink6swlfBLleZb2eek5KtiIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180927effd8-9455b82b-23da-4549-8892-e1e2824f7df9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0fdd8f94894eb50b8e4b0326196c779858d85b9c792dac1b516b31e36649472
Date: Thu, 5 May 2022 04:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651725238
