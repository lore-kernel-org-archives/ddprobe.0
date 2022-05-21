Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4EC17EA
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 08:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653121139;
	h=To:Subject:From:Message-Id:Date;
	bh=7uDgm9z+5MDU6bF8zYMKgudSD4820KPGfauyKsu89vU=;
	b=OA4SRe4q+1PDAWpaUqU2ifwfI9Vwp9Zpggsrp0wFSCyqImRHYEze6SysI9epZgbx
	RzQX6YAk8W+iFChGgUrFOaZurDdl6ClVwePCCLVRgVaRMwsKlLY2bg5Q0nFJgPGCpKP
	eOlFgK2+fy4H6U7PhCU0sRknFif3zBSZTqoeJ0QM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653121139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7uDgm9z+5MDU6bF8zYMKgudSD4820KPGfauyKsu89vU=;
	b=KX59LwVpU4EKV7l8+HcbdB9x83HuHccSehBzwyWzwigIfZhCLTfo22CRTsZ/HYUA
	0U1kYo5mDP4H7z9ZJwyCW52t3oJ9RavEqCGSXzU20HAy7FW6nb3ALsniCFyKE9e+4v7
	zgiH+aHdE2/DJT8fLnC1v35NhRZ8ahtto2IYZr7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5b2c242-84eeb373-ab2e-4f81-9f32-f93130b17c46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93d5bfcfccd5b371cf653d12868c826bc6439368fdf2dc59a500b7be993e28ca
Date: Sat, 21 May 2022 08:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653121139
