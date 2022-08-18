Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673F623CD
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660810252;
	h=To:Subject:From:Message-Id:Date;
	bh=cQ67N1T+Lu010fN2eU+ttfDLJysd+JC+SrTjUHN7k48=;
	b=kJLgAAg2CzaWe9G4/5mmwDXjLNRrWv7dGGHsvuJe0w877aO9md8cvjxVmYv+vz9o
	xIm5k9zzUNekIZiJRh0AbOXJpfe+4yNAknMpO0ovS4NMFylctNuscJgLf1fX5pNsdE5
	TjuTcPYeU9rtAq+X8z9sT+ZYFaARcxgYI6Lm57r0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660810252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cQ67N1T+Lu010fN2eU+ttfDLJysd+JC+SrTjUHN7k48=;
	b=BP+MqGblnY0FpOjm2/EfZmSxzLHRVesCKIt/A79bPTJt5dUzCslz4+6SMCbtlyyq
	GhmlvOiTfAS6G/mOPiM4q8RAsLZzJekodjy+9zFA98dIjaGW3WDdepCfqdXgN2gPlsQ
	Uoemm70p4VdgN+BbbRQDr00SaYjEKhHz1J5bHJjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b001514a-66728f9d-4a6a-4921-bb89-4ffb73c1ef31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d7c093f080d80c1b23596f903b2a4d375de9a780260f35dc340960ace60770d
Date: Thu, 18 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660810252
