Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695A323CE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645808184;
	h=To:Subject:From:Message-Id:Date;
	bh=G7rDewxzYagXYt/eAIOherTz66vHujjKT18dRuz24Jg=;
	b=F47D5YHtoMTHnp3WzJrFVxWcAzUw2qpCIQYdafBrIo35wzQNWNbvKVcDYoGC4Uof
	LecauQm5gx2xc7q85xZq1FFdLiDsZLzgdRQyMx0QR+H12MdCFk66rQdbIP3iB0MDrK+
	TzGqVqJGmesN66NBP+IYLpgGIMQiAmF7j7KJd8cw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645808184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G7rDewxzYagXYt/eAIOherTz66vHujjKT18dRuz24Jg=;
	b=eOyU7XN/AXGYtUscM4LFlbFC78XmxeZzGxWbiAojdMB5to9/GO0Q1O3AK/jLC3ZB
	kmwMlXQnwKwQA+14LoW7MKqsWQorlwk96LSfzIT27JF3ESCW6Ppfq16KcX9ApzYV1x7
	VWvghpaBR37tLwgY1Gp9lPqbevzUFKeiEm6sp6Cs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31cfedaa-4b4e6b50-2665-4758-a7a0-c75620b38d9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbcac7321446717363eeeb3342becbba79b77dac9fb73718699174bbb647618f
Date: Fri, 25 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645808184
