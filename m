Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84BB27A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646806585;
	h=To:Subject:From:Message-Id:Date;
	bh=1+aW9NxTqjg/nMsT8bNmtYJvwj0Zl0mV5yE4NCoe4AI=;
	b=Cgjv19JHYuNiAfQP5eeZ4LJ8sSjnguCLwLty+8y95iEMddW9my0pBpjLdLYLLpaC
	gtXVtbjqqvrIEsg0ipnMHNL9y5i/HL6gqbyLfjqEjxoa6Tvs0KGrR4uDTENyiCfcUlw
	e+vF+gMHxwYfmDWhKnpveJeXRlWVZ+CjEoGKqnX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646806585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1+aW9NxTqjg/nMsT8bNmtYJvwj0Zl0mV5yE4NCoe4AI=;
	b=YBu0WOcsJrMOB3XuHatj+WDP7LGgXXSmOd2dX/3CzutnCo+71bNeUNmsJrG8pE2h
	r/rW+Uf/Z4t2ktEpfKCqqrj8xIhurXT4gzkeI1GuuwNoCJnorA4amdnR42vNQXQFF9v
	VHMwBirCdVQDZT6iXq09Hy8FnqOWPWMsW3Wl3nxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d524db5-178fa59b-56da-40c3-a9e2-5c4c9a17100e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89753d948e51c7f1621ec60dcaeb8f802c2dd8b306045c429bbe951b81d4177d
Date: Wed, 9 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646806584
