Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4201FAB
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 16:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652890559;
	h=To:Subject:From:Message-Id:Date;
	bh=yugc/47kEjihtsTXMUuAUMr2IO9yThX8XSswhkn4lP8=;
	b=fj/xKqPWEaqBKN8arecQYxzMDwzmoiu8+avWRtCUVh2JaY1YVqgve4hugE+SAfVI
	Nhs67tIkYswANtEtXBlQiffjlfiz32QMCxqqIM4I9WkvcYVpc4cTfMCqcEEqVvp3jL5
	4OekeOuY+z8ZXbJmxsOrbfoqk72acRZFQ4kXhXNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652890559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yugc/47kEjihtsTXMUuAUMr2IO9yThX8XSswhkn4lP8=;
	b=MHppukDp6QHtKm4ft0bK5N24ZIrokQxCCoDcdL+sLAU3hPInuIRRMQ4099okmhwW
	FbikdWTukrWXaFLm5HH/wUX7bzKo3PTC1jPUYA4kzSSHu1gfwk2w5gz50iA47sm3csM
	ivPKDVBu+0Wyw6HB7k8Po2x8F7gmrsuwqzqkzhHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7f46380-09313ad9-99e1-44b7-bca8-4083b49293ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1f9ba394e8aac8c53cd4cfb293e11e3f08498ef303eecf49bedc612a0b6f3be
Date: Wed, 18 May 2022 16:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652890559
