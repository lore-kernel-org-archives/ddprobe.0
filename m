Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A6E65B
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657257412;
	h=To:Subject:From:Message-Id:Date;
	bh=GsdbpMJYnLy3kkam6EHuUFwOq5PfE1kHdppfvjDvIOw=;
	b=Wdtiie3CwDe5SNH7pQUZ2AaZUTJ/wrr/NTuyiYD3PZ70lCcPxqedsXeilcR0ANti
	9bec7slUy2C4xbKCSWtnrsvNXTlDrnste/rcAociaVsivRoq76Je/jUPYKIQJi+r/Uj
	qkw1eOzTSXwwJHzyMjbtE9XlZjCP8MKFjN0MDG6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657257412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GsdbpMJYnLy3kkam6EHuUFwOq5PfE1kHdppfvjDvIOw=;
	b=G7UBULH/3j8UZoQREKUE2bnt2Vnd4qYsmGk0mL34iG71O2lBF9j1aGin+cR3b1WO
	FasEmL+QV5OLUZY5QJwdDkxjMW6mUmWqc0IPLlBXCfzQ7nLvjcNU5aVRBIaQdpZFxGL
	NwjhnmK0ABGE4nvhhP5cW4a38AJ29IVLXGQM8HVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc3d46af-cb01b88f-381b-45df-a591-7a59f103f4b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d99adf257b2d93a62f16c4a53ec6b678a2ee228e22a3250a7d0031ca2b8a528
Date: Fri, 8 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657257412
