Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E932560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 15:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650986938;
	h=To:Subject:From:Message-Id:Date;
	bh=CqTKHZFzoUEJ8hkcc6kTJuYbM0BEFpVic7mXkyDgtcI=;
	b=mv3rL62nDNwJ1IfefAQNcaJCfhNXwSOF9QleYvgTYTod8+e1RLFycfOm/Bu0Y1+p
	f6y7ekT3CZ5OmXKbzrU7d2+zd6/VUK6gQF4rvD8xJl7PqIXJ5qqliKf7MzmKTyQvyL9
	6R6dMwG7IcQp6kbdnp4XW/pIo0ii6o5ux1Cjzm48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650986938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CqTKHZFzoUEJ8hkcc6kTJuYbM0BEFpVic7mXkyDgtcI=;
	b=GVK2PErtbQm6C0OAa16q29+R97FgHMeLq4tmCnZs9SRDwAiMzmFIuPgqNyitPbg6
	NLexoOJ7GWCVVvBIoYK+T0cymRjHh6xrRM1VxFl+YtV/PPmk/1scINn9x+qPW8IwzZY
	Tba7B8NrQur1+6S/diH7zi3PJ7DZkE509Fxp1HyE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180667d6f9e-41c075ed-5353-4555-9267-f24bc4236235-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9d046e490fb31cf838eb812cffea1f4f0969792c571393a3687b23fc82ad75b
Date: Tue, 26 Apr 2022 15:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650986938
