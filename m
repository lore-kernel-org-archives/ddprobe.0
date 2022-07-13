Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579E74A0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657741012;
	h=To:Subject:From:Message-Id:Date;
	bh=1hAwPD4mVTT0Zeywyjw5slCgw34gSlAGCGkLx86FLyA=;
	b=Pddq3mpxYtpI3Ts3xjo9oZuKw/KqtrBLpd+erjd5sLJxA1vLYqBGcTQkTQmguVRZ
	8yL2fvl9f/4XS7xNgTCwNXDgpv1uso4M0B3hJFBFZCsR6ccONxeQ39TSFkoec95cTEE
	oJrQXhJMtV5gCG7IXNdVOND23onRaZdZiJpESiFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657741012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1hAwPD4mVTT0Zeywyjw5slCgw34gSlAGCGkLx86FLyA=;
	b=CACK+laJGf+WSDQ9Ng9NZkm1mJyfUW7e3fH6KLZRiwH0RUlOw+xbAXovkn+l7CfF
	2TKB045z1jBZrjJmtL+sF0Q9OWXEsXiX1O5Lj5lmmCJ3/7wh1wgvv3a5vyrpfq4MFrl
	ON4vwyrD/DN1qJ10V/jkZgEQoCQ1vG5qaHsJI/Ug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9106d56-44ba50fd-c2d2-42a3-b569-2c71b170012c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff69add7aacb1ef3539bf71242290f5b518aa59bbaee99c6e1292b317f77b1b0
Date: Wed, 13 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657741012
