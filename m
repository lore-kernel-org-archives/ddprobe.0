Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9247A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 22:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650060778;
	h=To:Subject:From:Message-Id:Date;
	bh=a1RaGbwJcoYYLYjyhHHBbocX7oL7GDBLd5DILfuxSBM=;
	b=OexNx6bch6fzPXj6b7lEwaPPCEEgZATuSVDBQxzWLn+cvTzoJBj9NbQ/387amsyl
	hCmQ1JJl9E/v8HdI9CsZjgVR04+UaEPVqlSrxkWIxDpeH+0eBng42LF9g6vzDjygVs4
	d3JZKTCpybHstaTEwOGoMdp2o81ijO0wFNnugUfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650060778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a1RaGbwJcoYYLYjyhHHBbocX7oL7GDBLd5DILfuxSBM=;
	b=hgBzxBUu2WYEtdDB9TlCi0idAzW2KNP3KIAwC+2neYnc/82QsJ+oNRQJgW4mNQCl
	U7z7kQstAUAI0BWaGi+gmdkzJU+CvLq0Ul6nx+9xcMIDJfqRssAAYKm790lJHxLbI8h
	k9m4qhH3gv7NX0/wnPvd5qazsC05rLLIo1UysTs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f495b49-3d072230-29c0-4cb2-a7fb-6bfa5ef8735d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9036195a89196f4fb41cc870fd52c0fb055e125e6f5347aa461c3e91e84ac31
Date: Fri, 15 Apr 2022 22:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650060778
