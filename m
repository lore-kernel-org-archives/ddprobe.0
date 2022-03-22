Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C074CC6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647960085;
	h=To:Subject:From:Message-Id:Date;
	bh=rE3cn1cMXgOXp6q432ZYCER0bUIGCS7vrcaV385OOCY=;
	b=SezBwgaZYmW357C74aLNjS/iAHsNMFwaHeqyLRgSRqORNwsqj6NphCEZ01CDGmuN
	a3/o0GuGZH5Cce/BnB2x2R3O0JrMI6vIWfB+ZAs4PSPCAhGiS28j23iN5c5DJEhESLL
	mkRRSaJht3ayHUWvaSSEgo29CIA+cJnqXo1h5nlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647960085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rE3cn1cMXgOXp6q432ZYCER0bUIGCS7vrcaV385OOCY=;
	b=VtCwUSC5UR+eiIMblKoLZxDGmieGvk6VlXkGofipY75q62ronI4U1ozOV5k3pBK9
	XXNEj+sPMCSWl/VkYA1s4oRxyKANi+1OJ1amr7zsuSr7eosyV3B54hoEZY+18F08wso
	9r7dc3h/Ej0SFmK4aqxWDZMKgDiiit+5n6+hQ6bw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2135132-1f1a818e-a8f6-4704-814c-42b5a0e351f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64f86687437038f87f3c7bf0f3b33c70885a51ec2c7bd8a734c82e2454f799e8
Date: Tue, 22 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647960084
