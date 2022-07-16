Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051717A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657987012;
	h=To:Subject:From:Message-Id:Date;
	bh=hTAHXrvvhqDykMcUFPphOV84kAEPMd7p7HKwaMkoJwA=;
	b=Vd/z33AVV+X1KQmfe2rLEYhmeYRrZ5vvT13SLeRAn1/sWskMQ7qAp7oQoNSJl0PZ
	u3VmhaBZfOGW7m9L5AO3TeYIzv2vKdQbDFovAPD9dloZwFekNwD2oVhBQ0IrM78poXP
	cSsL7+7iXvCHlpXcaFqiHBnaxlvObw6n8ZsiEZW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657987012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTAHXrvvhqDykMcUFPphOV84kAEPMd7p7HKwaMkoJwA=;
	b=KP4CmLELbaUbssb+1MX8kRrIaVR9nw+flK03fYoBjkxYMSE9r/PeTzVLvLQZU6YG
	G62FwcZx84AwsbLtx1eVjdOnr4v0tO+XO8rqz5rFP9P529JVAWAxIKi1whbZZFIfdo2
	nCIjsf8EYhrENZFAMhJIr+jqfeAI+2EIGvNUqB3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207ba171c-044961b3-20f7-4de3-89b9-62816a192fc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff7f4a411fb51cb0a56ec918af5e8851d0d346d609606f99507d0f5c239e9123
Date: Sat, 16 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657987012
