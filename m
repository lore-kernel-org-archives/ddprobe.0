Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199277C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 07:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650870838;
	h=To:Subject:From:Message-Id:Date;
	bh=DiOEIct4ftmGtwwqNg8cRJRjlDrVQA+pIe+wFWwN3uI=;
	b=CbsJuHQ5oB65NxCXeIZLAp6+Oe86l/Bm70/9P+Ciiub2FQBcazFq/UmFUY5X50TM
	0xtBdJxTeAOJgRZYo5FphWTLAcyZu5RV4oE8eMn6Jo/YvnsWOTXKZ9mA+H4tL4fXbz6
	egYCOCu4E/rF28QI3o8zB5jyMJamKOpJDXP8YZrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650870838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DiOEIct4ftmGtwwqNg8cRJRjlDrVQA+pIe+wFWwN3uI=;
	b=HUfUgaYzxKQP2toSIPSg6siywa3FfgcWafWYL87gruoMcrRe8CGBO1VdrJXE+xfk
	bHHObvYw0T54F5hMIY+6FTksIbRP64IQrtWIwfLfqllpsuTRsybJ5pwmDSLGNu4cr4P
	I60wjP5cWgP4WmZF1Nck1Uafwr+rCF748NSY50Zc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f91e43e-a0129099-88ab-49ce-9af9-aaa8630913cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50614830d3274403762b1eeb458ca46da0fdf5dd4196a02bc1035140a534bc48
Date: Mon, 25 Apr 2022 07:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650870838
