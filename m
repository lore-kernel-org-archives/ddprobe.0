Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7A236F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647905785;
	h=To:Subject:From:Message-Id:Date;
	bh=wdmxTaIUE01UpZJwDgdtlYZ1Foq/chKZtA65xwmSDdk=;
	b=PCfr6OWeFWsJMYAEgRj5+kbhwzWJyg+S5SSrNWenTk22gxhw9d5TRTYjXsEUxnMs
	3TD0yymqIQaP3/sCBL+Ux2cGrk3PeRegueQTWJlQNnAMRIBdXOpBfwOFORrkf1G2JfD
	QaWyR0QpRX10wvvWMjBHtCRMJSfPxnkkbK/A67p4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647905785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wdmxTaIUE01UpZJwDgdtlYZ1Foq/chKZtA65xwmSDdk=;
	b=SJvS5/Jfxb8ChvmXQBtCEx1Iewn+9IZopaqhoKvqwQRnkkPEdFC6I3hJub/cHuRp
	bj/4Fmxrl8ByXXXy/EpBR7Yhp/cHv86wKr5vMLM2gst+ctpPYnvWkcaAnYD3wjVv9LC
	TL/SZH5/Hh3DHlLn2qoOm/u25ejw/3tQ31e3KEpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faed6c3e3-3b38d5ef-ee47-4f43-8b94-b4f0e188c506-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b95c048e5a540fdb72260fe7ca47d051af0d1f1233ad9a70d95420d678a613cd
Date: Mon, 21 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647905784
