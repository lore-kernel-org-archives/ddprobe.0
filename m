Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243407B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 19:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651261438;
	h=To:Subject:From:Message-Id:Date;
	bh=aPbSwRNjem/Yym7zrrzyCS9nmUlTlMTvFDSvdQzWwTI=;
	b=OLmbbHGuKvwd65g94Kogkyjay0PbZkF4cU+RaMQZHMNn3xFdXyQwofHQY4XghPZX
	B4/F5nLJcOSC2NITKY6YiBAPSdDWER98nV/SZrkYVEs4fGMUUM3UBBVnLgxFwzIOrFC
	0ZilaP68lhKaKPFHCs3Uo4D2IbTHpj16US1Mb/IM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651261438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aPbSwRNjem/Yym7zrrzyCS9nmUlTlMTvFDSvdQzWwTI=;
	b=YSEOqYHB23r6BPcbCH4Fi2h8Yqh8Tcye5NyXkAF5Q7JCpUMuLsQA2pJ1Y9wHnO7Z
	s9HIiFe4LfnSBDpaNamtqA62NIjpJnQkcTQm4lUCz3tnB6t2TQNQXjVEWmf3lyTDPpd
	NB1mJcG6MRGou0ktc0QuBsc6eXdm7FFnmJ/0Tn5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018076d9f959-4c7243d2-c106-49c4-b5da-34406915218e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8904e92cc52fb161abba635d68d853085cc3428dacfc848fa294092a1a69a7a
Date: Fri, 29 Apr 2022 19:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651261438
