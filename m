Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D8E3663
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647381984;
	h=To:Subject:From:Message-Id:Date;
	bh=u6Pi3lRkOxhI5OitaCWUAojOiZXwDc1RD/xYYdv5NqM=;
	b=B1eOAuMJQTtNIR+W4egOHDgmiXLgjuZwY2YueMKPxF4N6v08nwmKi6ugiJUXGYfT
	YnRNG/zdlw9SlbyHOKK/3+N8QxmiKbHTRZQWijyBbFEsUrgk4ez2jBshCkEQpLgPxyO
	Ki32haByHwXwfHxK4czr8IGFVxqMHEkfC09Rfb1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647381984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u6Pi3lRkOxhI5OitaCWUAojOiZXwDc1RD/xYYdv5NqM=;
	b=coI814aGHLCKj931s1Vae2Vm6mMtUEhvFVpgGWdI1NywYVCnY6myR3ulBsAkARvp
	2G0IE50Q+4/s2qfMPmakqqhKtVSZbYbFgEgjqY9LfGOerQdzLoWuPdCiOiReRFSu4yK
	pejsJFvQW4nLoLl5EzRztVtNKP16QwBDhsWcTkSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f9e3620-a2feb79f-b80f-4b60-afe2-ed609270b764-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee5c8717c88e3b198cc007b4c9bd3c7bf8e232d5a0645148f3dd48b8726385c7
Date: Tue, 15 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647381984
