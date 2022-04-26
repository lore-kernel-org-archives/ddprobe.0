Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DCA625
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650966178;
	h=To:Subject:From:Message-Id:Date;
	bh=k3dyI8ztPkpANDqoVdB2xP5M9zKucCbASnjdp2EqVJk=;
	b=P0Vosu/zJWIqNVBb1E21MTYfuVuTFtwOkE80/kRVcAzWb1xV0oNS+vTscc3XDOyF
	qaQHe0VbznpoYahrC74FuEV+XWMb/ObsFvdjTEBCQpJnQrSz/dneTvwwL8RhLDULvXP
	0QStzFSsNYEn307TScMtEc3QyLzQBJBftaSmDj3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650966178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k3dyI8ztPkpANDqoVdB2xP5M9zKucCbASnjdp2EqVJk=;
	b=P4J48yRGLNn1wrd6eu0eSP7nfFI6K9j4WC8u7XJbjDj+veODmKodjUuGR+ebEfQ+
	cdmwueoZ2rh/niLQ5QKd5LlNBiyHKOB9qsZjbbdIwVWxqqVV1JYlDFf/7NYNOcvHPAl
	7m8/Y8HmT7xeq7ARFEs0Yh9lJcF25fKqbNUE1F+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806540a9d5-ace19cb8-9f41-49c8-9963-b5fef637dff4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79b841e7dd1b8500c95600e760f0d6c2e2cadce16b557f83324b8fa4b9cbf11f
Date: Tue, 26 Apr 2022 09:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650966178
