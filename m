Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CC87EE
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661222452;
	h=To:Subject:From:Message-Id:Date;
	bh=IsGfA+62gbihVQe25wWDtqA1JBAeTPNdEklMGLwVGYM=;
	b=RrzkViW3hHKZGYZJU5EjuOohXEb1RC3PGsZVg8EcrH5m32akjv7rnm93ROv0z9qX
	bEhOUmvrXHpMsIpEKqJsa773dWt4R6x8o2E4TlQW61awRUqaZDcHehVA0IAZkcgTS5f
	G2ES7hHU0XtSS0kjVMMb2bzs9rWIhFqh209Nyfoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661222452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IsGfA+62gbihVQe25wWDtqA1JBAeTPNdEklMGLwVGYM=;
	b=YUjIzU7WRZUy/RPgAcEtOru3YnolC9etAfraDF+wGxBZZZtM49qB177DOgRS0Ldy
	G6i9AIs0cuXTVpdTZxGYx7HBEw1JNMSI4rKqKAMB8cBiUoN0hVBG7OV23Z2gYYH7j/3
	HfLYA08xJIvZ2VOiBp+cARVdfxWXm8zFDfaig2YE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c892fd40-dbda3630-ecbd-4306-b9ff-cc4d70ebb6d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bfc61dd8c97cfe8f4c4ce425f1ffc474eae0b01bd0b33a2918e7207bbd26515
Date: Tue, 23 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661222452
