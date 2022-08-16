Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F79510F5
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660617052;
	h=To:Subject:From:Message-Id:Date;
	bh=YbZDw8JO0/L67hdx/1U444izwKSl9NEx83uklaPu9E0=;
	b=Tc/6Y+eDtoFh8p1yj+g8nJpQBxm5xioloBvGb/GhFfCrVU/kiiEtkior6b6Jhgf2
	posnxk/xabT9/SEXTOTzzu/9tXiwYMTQ5u1tAiw9xCiQrgKXGjEqxzWJCebkGdvdsbr
	F3pc10zSPAMsHTW3s+vdVmmFcLjNkhlDvEWq5jkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660617052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YbZDw8JO0/L67hdx/1U444izwKSl9NEx83uklaPu9E0=;
	b=hhPs/4kaKDFYjazWXS2Aq9FufmokQhFiAMQgSCPfFrS+KZ5NfU+wXHwp/+k1sn90
	H8AKP7uiJJn86DEnNbanj1o7YEjDRrTVljv6SyzkAQgzCgxUY88j3NwoEgdr970SmVX
	DdwV9L9UKXJSJ5Q+JHc6IY4JD5C0rc3I054OVk/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a47d5174-3fb18aa1-bf70-4a59-aa20-d0c85a0eac0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c4ad0ad9a30eac2514ba3c7bd9be7ba674c176c58f1214bf105138087ad22d2
Date: Tue, 16 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660617052
