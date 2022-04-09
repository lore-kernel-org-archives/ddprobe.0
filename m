Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D781A52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649537218;
	h=To:Subject:From:Message-Id:Date;
	bh=4+U+E+PwDjvagy8ZNlFtv5O5M6hIdAu/w5PjnuWZRk0=;
	b=h9TR2JBI83/apweWcfHgV9AJ6mG4c0HidVOPcdzfYbdWQSTDdSrH1fwRY8exQ6pO
	c7WQQ8RxzsMIEuoubgFTH0V0U480cZ3b81vxc5oDx3Ca/8bA/ERYnxy4szgjQXtRXcM
	f7AhguHCN+MZjvbnN5+Ye2ojoe/UGkjcec3FqlVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649537218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4+U+E+PwDjvagy8ZNlFtv5O5M6hIdAu/w5PjnuWZRk0=;
	b=YpzF2b7eBTo6D8IAssFhON8kpf0xWNw8Kej/CePWIp/ydPUikxDUhSJj+wa54k+t
	xfcL2XdkSThYmvfjkQlTLqsSJr7IxJx9bicm0gGJr+avfT7l73s5tVg+zH1HCwsbqDC
	llI6ecCVOF8/v5c0esKB2vYGlmB9hSINQVp6HzZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180101476ad-3c641f48-269e-4f29-ac43-055a4e41cf7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfd17b3c4488b7e43f2fcc23302126d23c66012d626f6c5c3d438f8646fb3e5e
Date: Sat, 9 Apr 2022 20:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649537218
