Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1FA2F42
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 21:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652218679;
	h=To:Subject:From:Message-Id:Date;
	bh=MPop/Fje6M2Wgk9e4uu2eFFiWj1zYCeKRGyltFk/uLo=;
	b=Q9apoeId8BRN9ssmsLxY9yQyfarykxRMhyGve9PPs/soyJJS9Qtjhax0tG+4ohTs
	2dYKZJGZFmxdOF5QFzBZMbOfq4CylZxtANh1ZhLCQmRGJyYcL9yR+1sJ1aKAz3QtAY7
	PUc8tGsrC9rZRz4Ze5EIefvgfJYpr9eMXFszZKpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652218679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MPop/Fje6M2Wgk9e4uu2eFFiWj1zYCeKRGyltFk/uLo=;
	b=Hf27AbJ1NxmlwFq6zPm2D7HGYpcos6h/pvri/JkbOL23koqNqYz8NpfUWFxRkUeN
	nuW8vaVjagKY/XizgRKu66R2/CNSh3+XEIvAUM/ScZ0XM1agPwFDumqEbmOJmARjFt0
	COKExZoiilJnuDjNEuIDu+nR+EhN+6ZX1CpG6AI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180afe85075-6c8edf36-4a57-4e6b-9c97-666b7a35e91f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2bbac43cda1870a23ca91c77a0f48648e14ddb1d4b507d84c508d8cfd4dff93
Date: Tue, 10 May 2022 21:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652218679
