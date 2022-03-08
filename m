Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3CA2F33
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646708485;
	h=To:Subject:From:Message-Id:Date;
	bh=Kl/QNJrWJrZPjCJMtPtMaqsKn7cnQNyv/NKDrwcdoHE=;
	b=UOnaSm86s0n6EE0C0+LNiTe9zmXLFiR4+yrxnf/FXPN0VdcVr7cAL4lcOjTWWCak
	LOh+kdOdJtf8VlTBdKl3daqNmJKDds42klADz+khwhKc0MhEDXvc5HQ7OU39K8xIZTs
	Ke9Ifc3F3MDW0DV6alG2wgsaBXdpGR946QPDVTZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646708485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kl/QNJrWJrZPjCJMtPtMaqsKn7cnQNyv/NKDrwcdoHE=;
	b=Sn6GyF6D2+fnHO5dzWm9hOEA4FS0UrYyMHK6gL3DKfo+hS0dwKgu5hf3fgIoB57Q
	Rtd1rAukUU+uuHzpnrIy1EFk/qIOfdRfSS3R1Fzo32mnFJpjSENAIP1mBoXaNli0f2D
	7MzXW9EDoYDqft7gZZ0QXRyOdUoUI58/FTKXxHeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67796a74-6e28cc95-9ca0-4a50-b7ce-5647fb313c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9736b11b8b623ae734454b8e3b753bf23763bac692d77b4a25eb968c1aab024a
Date: Tue, 8 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646708484
