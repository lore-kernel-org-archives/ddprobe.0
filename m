Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472C610E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656659212;
	h=To:Subject:From:Message-Id:Date;
	bh=p4pUoBIIA36vnh6rXHZfLJho5WOuWDsnppKd8VYksgs=;
	b=KzQj4/2tmezhjCTyWOH9nqYJ56UdnDWEDsIFVUQs91lx6fTw7sA4r6cvCznlja2D
	uVWes4WsV3jGMIsmeYkVWoes5WtlrIqb14V8WzwBCa4zwKMglIeItcEzxQXGDlQ5sNL
	V02MTn6BklLCFcSOQWSyL3pJ+s2i/7F8aNv2wJ5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656659212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p4pUoBIIA36vnh6rXHZfLJho5WOuWDsnppKd8VYksgs=;
	b=X5mh8I11OzEnviBV1+GVOzZXKqyyV2i6XurdUXlrGeFpjeiRNq7n1Q1bF/Dqe5uF
	CZuODU2aT15yYTPwCTasQsWyhIH5H02fLli/F4imDZYrDEMYOaEbxkF58BRJ9PwvJAu
	dGx7lUy6w4MgS4Kz340nkzPO00jirVbYZ8X4qi74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b895783a-5795d070-a86b-4463-b357-d17043b5ee97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 002c6b9848d743d3e14a00ce72cdfa641da7eeac4cd41d07e3ee569e03a0364b
Date: Fri, 1 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656659212
