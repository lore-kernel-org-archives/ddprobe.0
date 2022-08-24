Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483211859
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661343052;
	h=To:Subject:From:Message-Id:Date;
	bh=5eWttxUrlEelWj/j65oSsW0csdOk9Kl4Mmk9Uojz2So=;
	b=ggFz7+7OfOhdjiR+Bq6VTTY+JJ/rZwsizaTZfBt3d7sMHbxYQkFJAAGrAIJCeCyF
	15qHAf6QzndbCz1prD3FIZahDXQ7geLLSaL/fa5n4ccs8WZexn+eqhCE/0IE17o56Oc
	wQyE+9RbXGEGPeXr1lZvmdEpAF2hcAV3EsxGnSgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661343052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5eWttxUrlEelWj/j65oSsW0csdOk9Kl4Mmk9Uojz2So=;
	b=YoBTp8jtapaiot0pCn2yKEt0mUN+lXnm8XRFXJgjsGTfDnElRP4ohSUHe5+EV3PF
	XRSdrRPbG97Q3dMTLInHajYzfnd549xy98KsztIDvz6IMMtyfAoZrurO+UCWIf2VDop
	/gPbYeMVaivv9j6mTJkYDinJ4pa1LI0I7TFeS3vU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cfc3334f-69ae6bc2-fc75-4e6b-8404-8fc65563da4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acbb297ddb499c7bf19d938d6fa06de21f339deb898bc3b9f5f1d24614b52ac3
Date: Wed, 24 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661343052
