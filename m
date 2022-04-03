Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153EB469B
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 06:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648967218;
	h=To:Subject:From:Message-Id:Date;
	bh=drxx9Bx088XaPFwM6d1gCZOI+AapC1fDW05rMIKmDAY=;
	b=TEGb/dNvzJKzIcSUCH6nI5QjjW4jOkZT7vUvWNviyhC3MJXAIIS38FllnAdbIvaW
	T1sAIbTgZyZOrvGcRLkn+wZGXlv5JlZ+6x/964AkJMPF3GGhekr+HaPK1vy52n+zXl7
	bJ6zJJ7lertvjcWgZ0EQbuR5Qic8MnPhDjWVPb60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648967218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=drxx9Bx088XaPFwM6d1gCZOI+AapC1fDW05rMIKmDAY=;
	b=XqwdIQKqOQC3hdV99W9e5/MSqc8rInVeAYqS7d1NydalMjuJJW1tcN/QEtGDH14x
	JrDCJfzpA8xMUTHxvroQb/4rHOCOU+Hv5VesNPo2JOqzS58qDWwaJcUf2mJL/7exhow
	fgmdqTnkUCVEHgY9nggk4sHNzEjiV626E09X5nms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fee1af453-4a80703a-a8b7-4605-bcf5-88fb34a074cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bea14e134fe652e2b287ecbca66f22475520a54628165ee3c05f54bb6c133bb3
Date: Sun, 3 Apr 2022 06:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648967218
