Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069BE3C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656431812;
	h=To:Subject:From:Message-Id:Date;
	bh=kkqAe/IcQR5XkfML33ModVThZ8tbTXEQzUCcAhkHKuk=;
	b=H6mvSk/7lhv+q/CPqqmiDQo0OGVTopa3sH4a3xnEYvo+otJyzxbrtGstgjzglwzQ
	aoUl8+zeIlkNMVF0Nq47HHK2rDYYU+ZWJvuxkqLWIGhSVI3LIASTEkNdde9h5YCGR08
	ylghn/pQEvJd1+bzUcO4He1La0v0G+xSNZrmJhxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656431812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kkqAe/IcQR5XkfML33ModVThZ8tbTXEQzUCcAhkHKuk=;
	b=hBUrR27yuvBmx1dp155BOGoP4kIwUspp4WCfZaAzbRQrMEJTo91EgXXrJEH9+LS1
	of8fYDPMJySOcUVpDJ/O776mPOgmNyyQ9pwIG76D1PxEUZEi2JlOrmpaddQ7Hp29oWl
	G7mZnxlPAYPR7vEMn+Q+FthyS37KMRw8pXVuCQHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab079ee2-4384aab6-a36d-4fa1-9ae0-29c06f1d04e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28a37285ce4ff9e265ccf70b25605ac7763226c5cd96bb5ec8fb92cb074029ef
Date: Tue, 28 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656431812
