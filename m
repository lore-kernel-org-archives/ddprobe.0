Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152D67A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 06:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648882678;
	h=To:Subject:From:Message-Id:Date;
	bh=KT1bZiBfyTqNO2WbrNZdYqPkX/f+fDHfCkCWVkGTtyA=;
	b=J5CUZPFhr/1BpZuNm/nHhm75cd+Zj575wlXlResKNYaPG5qYWrmHKZskhaV8YAVG
	3gL6yTq4nuLvkX5jTDdeNj3qxGe7DqY+YoFP8ZhDGQjLv1N6vEWs+m/f/Wc/bryWFpj
	ViadOn9bQ55J5jDb/olJSNBFZRiaNJAkqOYC0rDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648882678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KT1bZiBfyTqNO2WbrNZdYqPkX/f+fDHfCkCWVkGTtyA=;
	b=eZsJ74O3e/EgwWgxqqw11Dnu0Qje739cZRn6gbpuBSI/pyfxOAy3vDVJnLOd1jtF
	IIQioYTB01jgTRdC7dTltuDez7RH2ZJD3lCRH1x8hzrHp3GKGNSIT6iF2isEKGkyzXB
	JeE+Exfv8kt2rq0Fgi9q5ab4zOwiwEPTiMn/C2mY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe910fa58-f657bd82-d69b-47b2-9c0e-8cee794c7467-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 996422a0cc3ad1f753922e732d1cc55a81f911ce8a8f1997f14ff9154514438b
Date: Sat, 2 Apr 2022 06:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648882678
