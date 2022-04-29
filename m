Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6501365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 09:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651225798;
	h=To:Subject:From:Message-Id:Date;
	bh=nlKSmtlV/mvEDILCczHHKDE8+1hGPFDe5Q0Qgu1113g=;
	b=ZuQi1OWiy0dny95cpmvWAx2o4NU54bet4FWxdcod80dKYGD8KHjb0qkqGunShCT6
	OwHk1Sy+bsiuyMl6luUUzpTLPqY2gBymIoBwQK/I0Wk73Dtr3Lr2q0Blsc+oEcpiLFw
	YPofFFzKqcYD8AHJXPhSjLJVfVlF39MOBy5mnUyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651225798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nlKSmtlV/mvEDILCczHHKDE8+1hGPFDe5Q0Qgu1113g=;
	b=Go2vpducsWIhZu14lz6MYG/mItQxS7taT9RZaMX04SR4nNHDOrsKCx8j0Ur0SugH
	XnL4c0//A+00/sPJYKxqSxTZBPEaJE05njwMgkikSvuJ71mzdBvGkH3Ft8Vtp001hdG
	wL9kR3drExjTv1Xijx2ix6ylSLlbK1EhwEAgsWqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074ba2684-58f05ef5-3958-4129-96b1-bf68657724d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aed31c2c48f3b059d57337ca6e36450683886590389aee9ecb90dcea7afd87a9
Date: Fri, 29 Apr 2022 09:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651225798
