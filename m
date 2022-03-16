Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69682F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647445284;
	h=To:Subject:From:Message-Id:Date;
	bh=coavlCaU5+KPlTMt7BvaRhDYDr7D3my1bi5r+HHMwbY=;
	b=AEh/+fMuhQQmjq/AOlkOfLzZd4koisHY+FWE7hkr4gbAaC8198oa/DGmI9opgDWN
	E0n1HpSaLpNROMzNNP5Gk6L0GU9VOzBgsEFZA3GNIFq/aLDUrAlszaxt9INQ7WDknnr
	BwKRnYJMXH/z4Z+coHziF0QJaNqhd8Q6E+q4amEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647445284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=coavlCaU5+KPlTMt7BvaRhDYDr7D3my1bi5r+HHMwbY=;
	b=WFrnfjtbcHQ8Eakm/HGd5a9kgJUKbR1t9PjL9GVXJeyDe17rI9UVWB/QupKGxlcX
	dY9brhYFhlDGl+TJbDrgxEtHiKcb/nLKxJz4Vj+Q1A7IIRIh9QDn3owX1f9h/4EJZYZ
	vKIGM9wgUmcS4UE+z9zmgtEdD/o5mJSO54IbOmcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9364177d-55ba5fd3-eba0-46e3-8964-e4de44bac061-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 018f71ea582fa985a510041ce98fa446e5b5aeeb89135ab874f6eced537b960c
Date: Wed, 16 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647445284
