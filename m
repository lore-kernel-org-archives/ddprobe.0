Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA1BEA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 12:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649594878;
	h=To:Subject:From:Message-Id:Date;
	bh=fEA9XxKjGyAOAljEyNpAOTGbRlO0UiIbtEaGN/a2ysw=;
	b=L2uwgiR5QovVwFzLjU+ECV7CNKLg44sr57D8N0e3A3TkTnPBgIHganeHMlXMi2+N
	AZr5AxWhwTpo6Eq9Ih6mTj47Q+XAMqNV3yMh0y8O9SDcGN3OdKQOych5OtKXzzagIgn
	lQ+IzlSfnGVnnFUsItJOp7PyeUNU9PcMaBI80H64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649594878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fEA9XxKjGyAOAljEyNpAOTGbRlO0UiIbtEaGN/a2ysw=;
	b=BOuPHo6JeZMma1zC+GvMHxFzL74QVmelG0F3Lm+uPGcWnVJbqVLf9C9pPJ8LzoWC
	usFbtyY4X3Olu+Gfh6V3bD+CR0t7IR5odsS0h5X3+QAgccJN8nLyzF/sEwWBVRV0C6v
	eQXqbX0/b6SO604CvmSyr9WsKHv1hMnwo22Z6hP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013844979-da00fe04-6bff-4843-a0b8-611e2b2b3e83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01611ded4aa316aebad0bbe873b9a9bdd091635acc028c46f3aab066db20012c
Date: Sun, 10 Apr 2022 12:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649594878
