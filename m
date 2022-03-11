Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3B42574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647031885;
	h=To:Subject:From:Message-Id:Date;
	bh=sZRFDPhjzkp52Y/irrXnq7Q3S6BGF+Zce/EFpLBrn2g=;
	b=YXn+lFOQy+vtjA5lJQBUzaYJ9MpVSac7zL4Ags1LhWJRxYF+TzkZx/GZh7lI9NT0
	/obZ3rN3faZqS5eUsbKW78LBhfpiCFc/I9zRact7MyFyuZBU1a9nytfCea4g794X1Sn
	Rx7xnTEz5RM9LExXKlKlwpLH2Lp9AlMxXvRfYATQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647031885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZRFDPhjzkp52Y/irrXnq7Q3S6BGF+Zce/EFpLBrn2g=;
	b=S1rFXFAw3w9E5WKJe0D29axjv0NZ/eAZSQxEmF+vPli2B1dkYUm9pDQvQqaGVFxc
	26uC6EdAoUOcpiY+ZyiDPyqeq06APqvekl0UQMxPACXKQEPxyx0l/a+qiyXIXefJNGR
	fFhRkMA1+pTRPUS68F8e7mvU0/pi5kMDqkcfo24E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ac01ce2-787ca508-0456-486a-b781-6c48ab1b0391-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52df3c1cfb241952df26d00ac4a2891304656fec6f47df9dca59d6b35b762447
Date: Fri, 11 Mar 2022 20:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647031884
