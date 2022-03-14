Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772FF3FEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647284785;
	h=To:Subject:From:Message-Id:Date;
	bh=Nla6D7RK8d9+K9A0+C2S0133CBZ95p5jdAXPGlpMYPw=;
	b=K7AT+n6zFFCNL3h4PseeZce18leCoeNYVegwGfpdAHAkW/O9GWylgar66kfDOcin
	wddb40DDUN7JE7O16+s6elJlm2446hiB5MgSYdaE7PS7ajU7U0sRky/lPADYwFHvmx2
	uv2ZG0tFcfASICh6TEMJ+u74ox54xkhndsLOZtnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647284785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nla6D7RK8d9+K9A0+C2S0133CBZ95p5jdAXPGlpMYPw=;
	b=QwPeJ4zEdwxVJEXKbdDAYGygLH7/DDKUyd+Drjj2Ki7ajGkpcCR/NqSlEi3AkNEd
	25d9MlZ1xevDpU/Vn4/tPYXP2C7Vdz4nMHnqsphDWp1GXA5leQ4trl5zg7IuGmuiqLR
	XA1Bach0qBjVaW6ayaan9Tys/lFoQNuLXNWh5fWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89d30eb3-8ec28025-2ad3-47f6-a3aa-d949cefb87c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb5dc02fdc5f65526a88131d2d8febb7f99144c0a19c887d3576a4cd4b20fca8
Date: Mon, 14 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647284784
