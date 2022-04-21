Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D411FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 08:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650528958;
	h=To:Subject:From:Message-Id:Date;
	bh=dnOPXzY5oLmb/Vh7vx8f0w3oLa4E9NcGTreQf0jWpis=;
	b=SD0YC7nG5SXuri7MEEzSUUPe9D8W7ePYpeKeR9W9Rb+3Y0yTyXnxTzVC/KxuN9pA
	djHn30Ise//i61ybF9vCmP8hbJ4QNaoTS0PM2CSrz7JIHO8Bj130atpCdYsMfxQll/h
	4O8rmS7B0Dytn+2K1I67nj1e4BuzuANeJW3Tzo1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650528958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dnOPXzY5oLmb/Vh7vx8f0w3oLa4E9NcGTreQf0jWpis=;
	b=QJaiRyVzRZdLKAH2NJwL7WP9J0R72/9909hjii3k8XWqQ44h2Mf8Yna5i319jSX+
	YrX7J50M+YbTaeY/cB221f8Uro4IbwSpOGfCMJuYocyAOWalOhGLDmDaCu/fbVVrk8U
	jzqdkPJNrS8SpUipysxyPQpshJGY30hoTcFdbkUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b3136ff-56f4e30a-9087-4c22-aece-2ce71950216e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da5046410cd6924dd4247cfe965423305d95a6e3caecef30bd2c2cbd5181e84f
Date: Thu, 21 Apr 2022 08:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650528958
