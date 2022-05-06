Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5796333C4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 20:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651867738;
	h=To:Subject:From:Message-Id:Date;
	bh=3XGb6bFkK2jGitoz8HXXDzoztW1PbSLYop7P9xObXZU=;
	b=YOFB2hPjKXSoag4d2R3SF96v9R7IfWQ5tG+doqyk2wvRk6hVofNhy3KB0nBDhEBn
	e3FDv04xtRbfw2g1KvZjKxOFjDXOtRdfgYH3H2J2gNjBuNa+Y+Lw2UmTg6+GjQodxe6
	cPuwLfT1Mx4x5YGnh1I0rDaWzAZvBW4gAkL2P96E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651867738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3XGb6bFkK2jGitoz8HXXDzoztW1PbSLYop7P9xObXZU=;
	b=XSf4FITwqsBfFkrJY+S4aavSE6EWbY8mU8ydOEmqAXetmFQk5eDUefjweJ5SSeSe
	tRw+J31FWlaqgkkjzDdGp84ygO9LTtYvtAM/i1vzm9qzMhkJAcKwGSteLrkqWR+ZMf6
	yYnKRrapVIocMn1jWLQfrYB6cQzHg8UaSJLV3bd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809afd60f8-65f8da55-7eb5-4573-9d40-ee979aa55074-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4929f0b59804f823b237786917aa6580ff781fe11a877ca841d5ec806cb46023
Date: Fri, 6 May 2022 20:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651867738
