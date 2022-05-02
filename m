Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE0A7F
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 07:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651475638;
	h=To:Subject:From:Message-Id:Date;
	bh=lRDm95FRGAvR2zXZOq8L1BeWiC9GH4uUZD25YebywcI=;
	b=HXdEAG1XXY+Amw3K7bPvpOh5FO0yphUiFSuticGdMHwwm4v4XTC288qyuVoX+wFG
	wrMKkoLtnkaXsyIaMVUUpQQgo0Zh1Mfaq7b04AXi/YyeQPaWkXT1jTLKC+1xQY8bIJg
	1mbnXRrA34Up0Inwvnfmdz0SYGWlR/V0OLmh+OZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651475638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRDm95FRGAvR2zXZOq8L1BeWiC9GH4uUZD25YebywcI=;
	b=YCgA/xzUv5GmGO2QKEnflCudg9/TJ0Hi31qvci2O3t+7rEogQ5iktUGcjdbKmujU
	2YCxjDI1QlFkVokvaDeQdACXRZtnAiKsFsng3U3wPsMnHeUBn7XaEqsDsjZSxEGSDWf
	1L/FKoHrCh4n/WnAP6j9+R2TQlj4pLA8vbnvZO+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180839e67cc-657cd0ff-21bc-4bc4-8d93-4df17912fa96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d638f1d86e474763b531a358e7629aab069ea1d1d92eb10d515a3df9e215922
Date: Mon, 2 May 2022 07:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651475637
