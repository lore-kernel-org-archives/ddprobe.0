Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5AE7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 19:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651259638;
	h=To:Subject:From:Message-Id:Date;
	bh=//COFyNSvXdB5eKjSHQ99z53wxzH4bbYE27RpP/gP0E=;
	b=Wvo2Z4scokwkFFaMt00vfPXe+k37wMKGSSbXTx4WZ7xkfE36vKlAsx67GXgJfmd/
	lZYafgE6gMMmeqJcA0ekHcMnGn5+ra5vrFXIx2vrrz2hQzoEVkgCe/P/xMCYGUnRy3F
	4LcvJpGy+eS3g8VQdIC4onx5CmWwq0kaVlu6QcCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651259638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=//COFyNSvXdB5eKjSHQ99z53wxzH4bbYE27RpP/gP0E=;
	b=fKpC8FzijCrCt0GUv7Mz81OD7rmJWxL3UdGfTWP4ZyXJjjbVhCsP+n6AgpqVchV4
	AK1gcFZ0WwHomv7g/2CyCLHsC7LgLbQQN9iryAjS0aNEfqbp5VBbRCew5cYbNlNMJfy
	ml/CwMONwTqTyPFd45G/6kj7pBh7mRj0KedQaRRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018076be8203-8269631b-0d9a-49a5-b261-37409df40276-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf1db73d4722601a4d84ceb175d867a0b7c1463783a20f8eb437bc73d74e9f51
Date: Fri, 29 Apr 2022 19:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651259638
