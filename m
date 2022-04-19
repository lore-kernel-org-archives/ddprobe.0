Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F3EA20
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 00:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650327838;
	h=To:Subject:From:Message-Id:Date;
	bh=tj0ROTkuwxsmOL/Txki3SdvFCe0+g6K20aFoBL0jNg4=;
	b=FJSqlkDKQM78QaWjxxeTCXBoaX/ZuHaTC53nDPRnxuwrzV0pNLPhQM4WNOugaLDw
	vakDwJO2b3NXRlGtyrKE0aJBEdAf+zzcX3/eiEnEPXkooYIRiEYSUrfORDz7/8htQkE
	MCoxgAQzL3r9zIuuIieQH969f/Kp5PsijlqEKuoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650327838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tj0ROTkuwxsmOL/Txki3SdvFCe0+g6K20aFoBL0jNg4=;
	b=U17HVPtn6a7ssbRpQ0NqxYcUVK5Q+MwKyiwMz3RvhcJS2+stPd+SjKNYpqzFj6JQ
	CCHlRX12hdZqG3PcOAKutReHAniT/2BIhbsXYTc1PD6wOcHfnU/dSp0mOiVkrSuR7jy
	eU3iJ4tq0EU8e7U1ahKe3HIrDeLZ9GGHeRBMFdL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803f345e45-1b1c5901-d806-4818-b7bc-9ea50e156e64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1745d7b4adc1a9faaf010701dbde388bea1b3f80ee57302ec8720b788fca0ad0
Date: Tue, 19 Apr 2022 00:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650327838
