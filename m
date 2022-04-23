Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038B37A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 17:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650735538;
	h=To:Subject:From:Message-Id:Date;
	bh=Yx20nbM6JU47tFy+yWXBAx2GwTeJsn39eefjPTPzqOM=;
	b=mecD8h+gG6jkGw6iD0yCHdp8e2mpnYaPJrlIHlvfLW6siPlxKDZswGShMR7L0y1Y
	eoPGWy1rt0GmOB/s8T7kRsaY94MqmIbl1ANtRLG3wq82yvih9XzK8Fqwqu7Fo6wKWE5
	XfJR3k1llQ7An5elBV6i5g/o+pCxLuL7VnHorsNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650735538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yx20nbM6JU47tFy+yWXBAx2GwTeJsn39eefjPTPzqOM=;
	b=RbwYY5w7PVI8JG9ozV2YnCsutivLsq5Lc2JqgVS7+GXE/V0ts/VIgzZ8b/zjto9R
	/u2HxhX8dL7JX7LZS6dAUlgqzS20Huh9va77hdWuZWdRRJxwNpJ/l//7izhMt0180Tk
	if8NhqA4QASguLDxdw+iSdersvhUrM+GuGAJoLCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805781606d-84e9959a-3a17-4c58-ab6c-2d901255cf04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e80d4b3a8356bbf5bbe0fc649628acdc3fce5d5c805491fb15c9b6fa5886e34
Date: Sat, 23 Apr 2022 17:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650735538
