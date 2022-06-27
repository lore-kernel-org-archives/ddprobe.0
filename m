Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AE34C89
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656368212;
	h=To:Subject:From:Message-Id:Date;
	bh=UHy1TNh5ic1UGZ1qsoZ7dXcwrPCkQAyP3btEeYdVsuk=;
	b=kwRbuPQVKm6/rUQNcVoAXUrlaN4z93e7HPO6O+uNuNwt9q6vYbFpFs8jQ+x6096m
	Jbnzxy+M0vdUsnE7mZrbUObv7ChVhTM7T/ailc2Axi6rvcwTq4fEA382TxSHjKtzhna
	u8xy78dEjz/3tmbCcFB9Z7fyGcgvbW4ddoW5XKh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656368212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UHy1TNh5ic1UGZ1qsoZ7dXcwrPCkQAyP3btEeYdVsuk=;
	b=dlmgr0BFmxjvTJIhvqXY/+AVcqSO4ii7fFgOVMJri8vx5Pz01vpWjnB1hux5qndR
	MV/rr7mKBs7Xw1QLzY3CNGOVM8mzS8VAoybPanAuwutyP/Z90nwMCIuXaC6kFCv+a0V
	VvG39ZeLBRaeoFsH0hlFxKmLPEjgFobyYiLPYJc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a73d2933-3c7cabe5-9f26-406c-919b-a57316b861ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fb42bed7132a16d04a9bfdd99a79786b97702fbda4c1c6e4fbcfeb478a24dca
Date: Mon, 27 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656368212
