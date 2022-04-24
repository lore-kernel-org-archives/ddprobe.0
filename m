Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33419160
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 00:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650760018;
	h=To:Subject:From:Message-Id:Date;
	bh=6XtOGr0kNiP/109c1J8lEiwYK1EQNqpNmloymlz3I3g=;
	b=HkAiPSLVCXD/6axe8kk3ZB9PmgkVzyaYNzJYBVaO1DmAmevtUczcLMzL6A07z28x
	oj2QJqs/vrRN1ONrJ90md7xj+tFI/EgdCF24x6ZncAOo45+Pv9NGJHetqJ5gE1x24IP
	5QdCAzTfd9PWMaCfmnu25VJV+2jX/jLSjZuGLZOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650760018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6XtOGr0kNiP/109c1J8lEiwYK1EQNqpNmloymlz3I3g=;
	b=cxZ67kr2Hclmf/MFKBrpY3Gn+8BNRSzOUhx0ZxZ+8SA0uQ8kH1/sLXKF3YB8rVK9
	fivsvKw65dh5DZ/Bxx/U2p1XlFQplG28nc3gtWhwIr0y6YCzi5jw7MaASEwktxgE7lF
	59wJRYYOhYye79QbeAuQNtIFuLzbzYP5t9ccW5rY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018058f6e94b-abbd4077-67b0-4416-8b03-87e48ccdafb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dc65cddf46b575943af6b734d44be78d0e20404c9e7e2a269cf878064a98c26
Date: Sun, 24 Apr 2022 00:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650760018
