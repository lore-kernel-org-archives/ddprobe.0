Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D0F2910
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 16:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651423858;
	h=To:Subject:From:Message-Id:Date;
	bh=/EqJyImam/7uquCkC1nXMtwBUt1YbNcexKYN2Ig1wEs=;
	b=g+mscVp/U6j6svqv5wmO+eeHNPKV2PIWJsfgFxcuHVaWDMVP3AFAEQ+a+YQMD/+k
	ksJuR/HTAl+9WXZ5LU8GSB1t020N/ntZYtvJAZQM4wxbsWEYvsv9PxovmIDgapbIy/+
	XxenuW2zrwfY6axfdNZSRFCRfEro3dkpAm24XMHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651423858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/EqJyImam/7uquCkC1nXMtwBUt1YbNcexKYN2Ig1wEs=;
	b=IMoaRL8NKrRBLFoYB9bZXb0GOnPLF1BlRSU/4ga8hIjm4E5bw5WISezx7S+5lD2f
	drhzLlyHfkhOOfYJgYLuu8dZBAaeXdlVDb5rXXq2wS8c+bMGMgbwRqZsF8AR+rFnV51
	LcVBsIacTDsZU4uuNZ4XcpCax1UIHCPWr8cpjjls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018080884f74-64c717dd-efbb-4c14-85a9-aa5b30e00c1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22eaa4468f01fae50487a7024a49aff9078de104446e32f91c0dcd63ba72d473
Date: Sun, 1 May 2022 16:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651423858
