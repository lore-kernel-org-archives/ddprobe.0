Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A193D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 21:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648331638;
	h=To:Subject:From:Message-Id:Date;
	bh=2KZqqwMFHw4cnaStdZ9lqkqqEstF2yRhngbqX3qVVVY=;
	b=JqlJLZ/XdUgmdi+2Kb+0XTHs5E1/N8xPCo3iNjflRYs/UWCv7zcn6Zgn7tE4LV5F
	x8QKbjb5Z8rkyFb0esDfYmgEEdePCuxE/aen5SM56FkmCZPXRThNTRTKsyc6Pl//zn4
	fswMIXKhH8GMOnyr6kuzVHg7e/XESIC+N818s658=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648331638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2KZqqwMFHw4cnaStdZ9lqkqqEstF2yRhngbqX3qVVVY=;
	b=WJ5TLfk/68uuOVICrecCLaQ4BPnRxIIPQCSmzJ1Z/JqY0gvDVQ0GwmKfOMKa+RR2
	Uh15PpG1Q2dXkezbrfjcyv5oZLnRTF9Ad3qBhPs6UMkcRF8a/HsEAF7DImpKo7FVUaT
	Qw5yCwGvJAhfPMDJED/03Uvy9v2gZpdPX5dNWQ1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc838c5ff-19a4488d-5adc-4086-b937-0083decfaca8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ba1b66767571a2613107477fd142d1ab5512cd0689045438340507a88fa8dab
Date: Sat, 26 Mar 2022 21:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648331638
