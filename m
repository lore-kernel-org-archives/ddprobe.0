Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDAB6674
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657999612;
	h=To:Subject:From:Message-Id:Date;
	bh=j3jbp1z/r3Wj27KcjS0nUmcCb2zIYf8xYgLnEkl+OTM=;
	b=AuVSTDXo6B7KitA05x58zSKBCViUID025mtJ3RQA3cfyZztzkGGHQPTYduWSl/bL
	xSJmNXn6jvfs4+1txebzPjEQWcJyyP0R2pcJYVz5sFdJ8S6qOx2j1hECiA3aZHq/BzX
	LnqWhnsOxxOjq6h45qORtjPMCqCURxCeT5OgZQ18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657999612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j3jbp1z/r3Wj27KcjS0nUmcCb2zIYf8xYgLnEkl+OTM=;
	b=INtjCmbtEbz27MeE8TUs6/uCBrheGg/y//LVFpsMyRTsXSJPWmXnhxDwu/s93BQc
	ydvmP/t8NkimXWKmzTK3iF3EOkUnR8Y96vSAbzxXzC7heVQSFdyPc2NpKI4edCxQDTO
	5mTahaY3dBUfH7W3WY9+gTvesLTrcjFUKmip0nzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182087a5999-8b95c201-c489-4bbd-b8b0-ac2a3471084a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41fb9cc79e30e3346bba4a6c8bf77dcf510175120abe19deb1d0696dec1f60c1
Date: Sat, 16 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657999612
