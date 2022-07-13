Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197243D84
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657722412;
	h=To:Subject:From:Message-Id:Date;
	bh=0lb7DtynUf8sauWqz1dUYgcHElUb0TPDSHW9H3y9VUM=;
	b=gVNQCefRcn1A6m46vwugL3rBXZEigEUmq9AMCDvTck3L0bQ6qtAGcMg9xqIbhqy7
	9g6atkDkLav6EJ9BxKOj9LlJvNkdNvaGwOOzG1gUf34DrDXQJsG1bcNHOjM6DePECPj
	klnD2lE3XAj4YgQ8WHR1ogVXtcY9xXRI275qa9gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657722412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0lb7DtynUf8sauWqz1dUYgcHElUb0TPDSHW9H3y9VUM=;
	b=k3aqj8UnUmb2CKXbxs3U5dknauRkj0s9P43I91U589pQC7uVuC/RjQ7xnS34lF7Y
	jcrbeLw7DOSFdzEpyhPMclSA2rBil9kNOTJdzTzdDN45ETiSewgc9TUSPbByYdqhxJZ
	tQ7vsnuaRKJdp17W97TjvnWvLcxq9TolsHID9PNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7f49d12-d8b840df-3687-446b-a2f9-150a2112ca7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f5f4bd2b05e336802e49711151fabb43e7ba0b3a4a64a722f3018259b4701ee
Date: Wed, 13 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657722412
