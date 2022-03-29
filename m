Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355C6258C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 19:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648581298;
	h=To:Subject:From:Message-Id:Date;
	bh=Tf45R3782XI0jaX6ThCIXLhVbGPMQm3x4q6+UQUf/d0=;
	b=ipwC5+HvznP4XO685SIojdl9zN1JSynZmEWAfTWyt4JifDg0Cx/236dCgbRo9Mr7
	hi2dXoo+rTf316Q8w34kbz8YbXU824hPExyCRa31MLs6lznMLaN7dtRFY+W8EY9YXjv
	4bMmDShd5pijbtmgGTvk6xVIIPsQ4x0gZO5xUpy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648581298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tf45R3782XI0jaX6ThCIXLhVbGPMQm3x4q6+UQUf/d0=;
	b=SaIHOV5B7G8j1Zbp4+l+kY5Qve9ZkVatfpEnzuVj5wVUO2PB50IeS34U9V61pMj8
	WjFw+KZlm34aaa+JvJx6yn7hj9n0Az1Gj7YZtngliG/z2sxfUBaA/TK51ZWysqVF/8B
	q4BpKPsAbvN3bBeJrb0tO01XOCIBfOyZAHJ/9bBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd71a484e-90b5b45a-c418-4cfa-a30b-e77715f4a5ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69d0896462b2e2248fd4370dd258f6e1306348c97dad738067a958e91154d8c0
Date: Tue, 29 Mar 2022 19:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648581298
