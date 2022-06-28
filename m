Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA08368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656386812;
	h=To:Subject:From:Message-Id:Date;
	bh=MvXku85tjlNSVMdz3UzHpAtd38EjEZRFMHapzpVVD9s=;
	b=Hr9tXeGli+ROJz11gnM+HjlaEBcLKNEhu/HVtyKUtdlse8KH1LbqYNCJvlkMjdfk
	+NRaYUrpm9/bqdMv54JDlzVzx7TwfM0fuO+EWcnEqSGrF0aXKCK4cSl+4qjz8UvX+Xk
	bjBC1aTmLXOLtqVYCEuaaUvQxbzCw6aDA4Y4kcqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656386812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MvXku85tjlNSVMdz3UzHpAtd38EjEZRFMHapzpVVD9s=;
	b=PDH7Mcvc9qsn+KeRPMbHXxZbSMrziG5p58SGSZ21ZVQblYIbs81yOL735xbmi7C8
	1ccL5e+Ez6DXRwPCKI8doQI4h00VSw1u8xLEiJJna5H+mQolNdGXtbwfhMjg025J9UW
	XKeU8uxDNrc+3wtyrT2sZX0ZNkvsETh3ZaB1RA/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a858f98b-d65fa5f6-70c4-4351-b70b-83ed51591e3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85a861058ad99df782297f4c5509c95acec623612b82cabe384397fce9f0e8ef
Date: Tue, 28 Jun 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656386812
