Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E360C1FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657520212;
	h=To:Subject:From:Message-Id:Date;
	bh=AEg4IM80TfEwJMZq7tKyJqODgNh1wn2MLuNj8GnGe0c=;
	b=cTIkrFMeys5mV3JT4UF53H5UueY8IZEGkTXrg4QH112MfK85v5K6f/5bfccfKS2Y
	gK06VIhFyuecZ5NHUbmgBDWVPjwKi0w4cS7Un56POOqUlmI3v2/71F5jz32P8Qqnllx
	t2UJmQi+bk+0PUsNEwThynREXtu5G/9cDWuODJ5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657520212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AEg4IM80TfEwJMZq7tKyJqODgNh1wn2MLuNj8GnGe0c=;
	b=azRKPWZ1U1YSdMlGrg8B87BXp6bxw27T6kXw1mjV7OdidBbquxTGhh6zoqrGkkrn
	UNYKgEkyMQTvC6RdOeZrBT1A8hxE9EfCXJiw0gXZ5c6F2wf3zN7bZWFk5rkbEPqJ2XZ
	0vB5eJSAEEhuuiytT77E8/Btc9QgQ8Yp96H+Vhjc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebe74916-fd02387d-dcbe-42a1-974b-d9f4e7380ef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05d2c6d71030253a0c8e1866c5d184820d5b5ad4cb4da2783caf86843c83e544
Date: Mon, 11 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657520212
