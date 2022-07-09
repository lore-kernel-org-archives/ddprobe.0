Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA2D7E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657328812;
	h=To:Subject:From:Message-Id:Date;
	bh=RovJH+ZpEOnDfLlmV7kv+T+SjNR2ALKubNMAHwTOD/s=;
	b=MTvmFjfsnTXWuwyUa71qdr56MqcqtynvlHXNi8V633/Ii3jsAjT8jhCi0PX6mEZP
	AGWGoeyRI7RwREwJg82ENyhZhcPRWXIRK8B/Gmo8PIwpoer7Agu82ITc747sH3ZKpDh
	5AUD1MmGUps64ByTrxjikdEhknG7RTXcvATwDNHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657328812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RovJH+ZpEOnDfLlmV7kv+T+SjNR2ALKubNMAHwTOD/s=;
	b=PbTP38UcGHraKEOyHvd60Y1Oe3ipivFUy5q8yhwyBdnaB+2PNI8ffoBkWsnbh5IQ
	XSWlw6JuhILtcVlQmTOeoDeQXKhqZHxxPiHRly/Nbp1n5eFtgIEQxo9OUwRA+uuE9O+
	Rq+sCGmwuAFh2GTdev8WfmmkQIzCLTK5Hja5f8uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e07ec127-b307dd0c-4770-4b89-82e9-a10042a7bb01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f32fe78ed44e100346a14248a5c9d06eb21c62cc87c64b956bd1d4f3a54cfe4
Date: Sat, 9 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657328812
