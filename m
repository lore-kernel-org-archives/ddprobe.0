Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953897C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 02:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648694458;
	h=To:Subject:From:Message-Id:Date;
	bh=6V7WNqz/8x5PCdlfDK62+Ky23AAgMPVJs/ip1pUXY90=;
	b=RRF7ge+RJGOJU4REIRhbWnvHaOIyErL6+cyUkg/bYF9xIEXWde9/t2z40QIzbrbK
	z1XlknSReUgDcZ4UNtqickmWSxpIXv76s9HDtSB2SUw+MuSPo38VmrIfo0jBNRz7tzZ
	Gv1EkggWK01hIesAY5rpek6XoAUGlRSXm/PIpdLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648694458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6V7WNqz/8x5PCdlfDK62+Ky23AAgMPVJs/ip1pUXY90=;
	b=LxOY+PLxKVui73lNW8AuG3lBjSGS+IeOIr2VJp2PEA4qtthEhm7zvkL1alJb18ci
	DGBhJUPzoLtVu1FVEk575LOf0nzY/j3MMJNaYYuv2AAGq1TzaKZKntaDQZGAf6PlJ9/
	vktAPVCwJnXTbZ0piGPSBiTnNIB/P+C2bjX6HPjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fddd8f7c7-bb10f1c3-99d8-42fa-b6bf-611dd496cc77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d6842d0bd06d89daf3913c7c9e84d6fa13636411709994d2ed69fbf2c2cbf17
Date: Thu, 31 Mar 2022 02:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648694458
