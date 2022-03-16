Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63FB4687
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647405385;
	h=To:Subject:From:Message-Id:Date;
	bh=UXZiCnY+hGuCLKB2svv7ovH5e7f5dARVYFQYsnWLSAg=;
	b=ZK1qeXWk0wriUuRpv/KHhM+dzJqKqs1QewiioyzDS2M0GJwNmXl25xEAnPaEm7yw
	fqKg4fXEu2uOXBXboIVEmebZBNPO89maVbFF9puFKQB2z04/8Js7gOWWiAG8bWL1sWy
	PrqRPV1hfoZOo7MElyqzeCy6APkCOA8a9RodYYtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647405385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UXZiCnY+hGuCLKB2svv7ovH5e7f5dARVYFQYsnWLSAg=;
	b=Zqt1VHgRziU1id07GYQJCGQKvDADBhyJZrflRPA7jO+dWivCeRFYkKuHI12yFx96
	g/5isD0IqALuMpFBiR3jaK3ZkpzExNdzTEsAzRjBQ2GN5u2JrMDb8hGOZFTqjNAGmch
	F0n98jTTMaGsQMW1B1KeT2lSuSqe+gku+W73jVZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9103441e-de685ca6-d56e-4652-90d5-3698efd93c87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d8edca7351f67019297f3364c76c536f65f6bbb9a059861a19f7a7ed837cc27
Date: Wed, 16 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647405384
