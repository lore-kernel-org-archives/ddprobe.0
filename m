Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2973212
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 21:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651527058;
	h=To:Subject:From:Message-Id:Date;
	bh=HoeryV8nF+4ji7G9m2bpmlEiOvQR60nGVmdzNE6ImG8=;
	b=FOyG3aV8OQ1yVrDp/xtN75NROWicY1pQvqmFOgJ2iubxUuiCc2h6cwrTsOGHxYu+
	qoH1EeUgJ8CylGzb/NsZL9+totHfVn6b6bk4BQ4Py0WqoNq3P5vBFPQFCbaj6D65jBZ
	GNUhGSJ77Ch+yZ8XA5BipCNE8xqBCx85q/BmQQYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651527058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HoeryV8nF+4ji7G9m2bpmlEiOvQR60nGVmdzNE6ImG8=;
	b=YktAGvTDs7arc29h9I5QO99QJaqKixlBbpTHlSSgf1NuBtNeg8+Tl6DQJVWJOK7V
	ytLFQ6OVwmDT6BnfZmgF5UivK6HNLtZkjt5oUdC+aW5lKyZqcrBoEPCUiCkFnrfcxX3
	GiKCrGEqMQxH76Tf+mWau8z6iB9Orfpjaw4uLf5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086af035d-720412fe-eaf0-4c15-a5c9-4ce073f6c198-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e011c7e873dc42adec70e122933ae304b49362258b829a2de0a09949e3a1519
Date: Mon, 2 May 2022 21:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651527058
