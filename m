Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094F248B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647603385;
	h=To:Subject:From:Message-Id:Date;
	bh=M8YWVU+DVuUKEnwaYbBB4B9Z6vgiN2PQtAgZ3yVfdZs=;
	b=CGPpGhaPWVCChD/62CvYl3+3OKBUB9PT+o3Q/DvzQBXiun5avJyESiJK2aQSflzR
	HBb5xFntZGGcPN4o4VrnZ6/YdfUOX1K++KSComsrqAH0qtdVGYcuwaqYXedNIIZR9wS
	wMqJKD40rdA/GYiD3N7uET78OuP5rrOwHNV5gY7c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647603385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M8YWVU+DVuUKEnwaYbBB4B9Z6vgiN2PQtAgZ3yVfdZs=;
	b=eQq+eCdGPEX/m1EIpx+cmOVZ/OXiBe93F/Tm2R0F9IPRXTmVqxnzovmQpX7r+gMX
	sn/MYHrqbYvqpzJXJTC3uXeZIkNqHoXdVSWyWtmf+blgPLk4nH17u0AEFquk6azO63y
	pF1Mbiii/pi4vZ8tyyoBQvK+kfTLdNe4UWFuX6R8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cd081ad-dff1be42-a7e6-4a7c-8953-ddb19cc05b2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bde73f2c0aaca26e5420ae343f2f05ba95aee66c06da016e91561e0b3d7b6fda
Date: Fri, 18 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647603384
