Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698D315A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659228653;
	h=To:Subject:From:Message-Id:Date;
	bh=pqmksu7L7sPwP7cjWLKk++K/ompb5D2QDLEJmdpZ0+E=;
	b=YirQFZmeql/em1jORSByjIcYlNDFXKuKZX3y+tboie6kl/2rT3Nduv6U0kOQMWr1
	HfZhE94PCLMc9RXx+8N+VDxrCOG48mVBK7KCkoVLpxDudiyUSMcsC6nWuj1ttGtv0OK
	oF182vIayasGmoLzAnn3Sq+IsjpXkHdge3Q1/b/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659228653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pqmksu7L7sPwP7cjWLKk++K/ompb5D2QDLEJmdpZ0+E=;
	b=ZDyFV1wsLzdpZ26qqmD2lrat99UUdU6ORYOwjDXEe/dl03PQ6q5PhU6Yf6KX0hkF
	HPtpmWifYcoz3Rm+w99+ToY6zWXwoRiok7n/G2txfHxjzIizg8rTBk1t6UazVjkKe0j
	pYqHbzz5zpLcODMYgWqrSWmWZTeWtzZ2pJeQivpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251bc0457-6fefd077-90c7-4379-ae6a-f181a14986fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f103a64153c888d1023ab86c81937f95476835db0ab374c8bca3bfea97677dca
Date: Sun, 31 Jul 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659228652
