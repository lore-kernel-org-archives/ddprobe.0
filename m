Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C35E161
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 16:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648486678;
	h=To:Subject:From:Message-Id:Date;
	bh=GFwaqyBaSyVvQGXS5RX3cmav6NdIax3uLYX76J/Ul/o=;
	b=WvZnStljTDpFJqS8lviuxSaEPsW8hevlKSE0O/exNkOgg0D2kOnZMa8ppIBQ5ArC
	DY0qhaLJO/Lz9WulOD1Bfce+HHmJGegKd7NQ/wRJhXGEMEuyIrD2H48kKpih2XRyJ/1
	XrXGLaOVm6w+AtI+/JmhKvwYBKGNI/GeqCUGVlAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648486678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GFwaqyBaSyVvQGXS5RX3cmav6NdIax3uLYX76J/Ul/o=;
	b=jcc2f64mzuEXpsAqA63URBxHSjQ1cz9IABZJ/saWIzqc05lgY1iHsiCRcCPtgG23
	fFc3WsaIBJYPXxPSvqQuDLBSruGViLbrPg5bHgTvhEOpuQZqYu+6HMpyktAh+pAFD2f
	qhEDKiGE71+5tBT52pA690jBPToGtLzEymNazvys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd1767f5f-63b20631-38f9-45a9-9cec-c8d512e70844-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1be3a0c87a855ec9565b6a1071c04253568f31b944ce455600d01bc5b072d27b
Date: Mon, 28 Mar 2022 16:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648486678
