Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA65D381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67E20C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668862854;
	bh=8sxH7+vPuyJVwTqGoffvqINvfAMgeoQDozmbRrClUOs=;
	h=To:Subject:From:Date:From;
	b=fwRD2YB+cECGu3AQz0/dgjNV0NJSmX0FFiVVhVSwYHfjH48aY5aiGfj+Df5R6Blap
	 hgLBq+oK0Jic2h8vhZeI9HUfVKkxWjb5jUj/0VUw6Yn4uaq5SmrFkp9VvuPFD7JhEh
	 AujnNh5/NoIdgG7qDGtWC5WwQPXTcj2XKW0+ySGSss1/flyoxalEnrvrya/Md65ROf
	 sRAXHi8Sk4p3IvgA1lnaDXeEvW4FW+I8QCKYshK42AMtMye8UpLd1+AybznF1AmaIY
	 U21G3i/6jp4vLTdSIygdyKHn1BsB3/zloM3oM2FzTs/63AzhhuqcqXfkDlpk5bVb7G
	 erYNBfnJNHWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBF6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886285431.16286.17896187416244539255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363623cd2a6d899e34063bd55655b77022db322163f62894dc5c82d54555641b
Date: Sat, 19 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668862854
