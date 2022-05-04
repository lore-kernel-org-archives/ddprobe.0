Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C092F23
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 19:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651692178;
	h=To:Subject:From:Message-Id:Date;
	bh=qQBHWEALA+0vQKLjkP0KKyrleSM5VgeFkqOEnEeJ37Q=;
	b=bH5kMV7/aq6axMwCyda7Q34gSebFzZxYt8v74UFeTIQQtG7vTIMMjaVWNq85bOH3
	aDDgobuGozdLa91cEWVQzvmKpWITj6hkQzGJXoiyqiyAIYFIqt3udBU6tKvmvYTBFkP
	n/5KRqq4iTUWa67dNWqKYQk31PrTaT/F3ESwA+F4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651692178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQBHWEALA+0vQKLjkP0KKyrleSM5VgeFkqOEnEeJ37Q=;
	b=cY6rSaV4qoTJP0CTBK+AtB813XnzbhhRIGul4csqbbdUXgiQam6/qqTNI1w7rOy/
	XsI4bLWlmLiqyfXDqf30hKVdx1NlcN1RaoLoXq5KFZdt/WrY2rtADIDTvSwfzfI/3sB
	pwEGo0T+HBQDF2rMwqovCA7H2qFfRuQbfS3C2eBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018090868b4b-0ff2d527-c57b-46f4-87c5-4eed49757398-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0680dc2c81b879afc0c48cfa8808f29774c9e7500fb9c0425bb5d3bb3e6ba250
Date: Wed, 4 May 2022 19:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651692178
