Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03977600D
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658275012;
	h=To:Subject:From:Message-Id:Date;
	bh=QIbgUV+BaFggpZdVmTfLMWNW9hJbv7gh4UcP/rVEiBI=;
	b=dmNQ2EXio9D75NTmVKZdF39sQ/CjXoeN9/Itl5KQyeg+xFWS5yZu7XdVz1LX7b1T
	rcQ7vsVt6sDM/lfe+ifNl0nXcw3a6cnYXA1EaQesbg1wGLDv2596+NNHXll33qSpVtT
	Dc2n/iFVL343MrgN4D85wXLHJ7PD1QewBdkiOe/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658275012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QIbgUV+BaFggpZdVmTfLMWNW9hJbv7gh4UcP/rVEiBI=;
	b=HV7CuaU+Fopt0cXf1gMMxipsWXk+XF2Fpm4DNjPomt/+tUy7fr6KeUYwm2Lko32M
	6dHGuy4D+rh2ZeG3nbhcRuJfAe4hSCGT/0nWmetusMS2Q/yXXG+GcJT6zpfSfCK2A18
	JoS/7Eg019OgKnTLFNZHkkj8nFf555zFxzNK0pXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218e49f05-04c0cb24-6383-43af-8dde-ff6454c9361c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5af60c58555882290b125d24ae58a6f7b7fdc3692db31ec99efec0b4e4635b41
Date: Tue, 19 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658275012
