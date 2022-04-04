Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E152F21
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 12:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649077138;
	h=To:Subject:From:Message-Id:Date;
	bh=UheLc0/Iq4/jnFdnmfPjz5FkCAFWsKKK6ECLBbn14lk=;
	b=chwfxBtwEAUoOfrZD0tEbpa41JnGF3Hh9Qu9VBIg8nh6FAl6cHHv0vt/TP9dtrHu
	TwS3cMSUySWiZ5nbx+nH1RhkVvjZm+CU9mQWsyjdzLasVlGtBKVumfB7PX5X4V7D+eb
	5BJ3/fvhwKgXIY1zvOdgPPN4kSGKwCUb8cho+F6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649077138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UheLc0/Iq4/jnFdnmfPjz5FkCAFWsKKK6ECLBbn14lk=;
	b=PY5jPe3UoApcx3MivAaGvrGIanYCalkcpSxkndHcrOBkBpma2hv1D5IPS38FqdiT
	8tbmRiuC7kzQ8eLW7QVLq6AOQZkYtrgwwGzjF1ScFkzvNCoHluNOMdPfASa85HQfX3v
	RvMIqaBLRSC5Ki7Z78oT7EFO1AR2++566ULPKZXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4a83381-a536cbfe-6abe-4d02-9226-9958d752e1cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab6a27123e04d640d54d9c5f9db4bfbc3f2b36583ff3ffa3f8558aefeabff6d2
Date: Mon, 4 Apr 2022 12:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649077138
