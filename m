Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59E628E6
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 11:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650626578;
	h=To:Subject:From:Message-Id:Date;
	bh=hWdxDlHhULReVGPh06CYPqR7/wEXoIoMO7F7Xz3SQyo=;
	b=I+0TfnSDpPm651g0TtztlaBcxxk9HMDSw5I1HorBqEAWe1oJQ/1QiLZCNQC5aHBa
	SMchP2unj0XtAC3FZaOOjMumUtj9351P4K37lMZQZqFyK+TEtey0aiWjLULtu/GAYjr
	BMdm8mnK4w9rZFjKhbO6MJsA9GeYJK1eOkI/8RPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650626578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hWdxDlHhULReVGPh06CYPqR7/wEXoIoMO7F7Xz3SQyo=;
	b=FoenOidlFI0RUHCInsH6AZIpgd/v0Q2aTUGcAg+PQpuRUwTCJXVtisLnhODJAmJZ
	uzQZK+/uBeq6BNI/O6Z+H8ZIlHLXn7dMIFVRRy9BcAxZdsKfGstVVh6106TEFTM0hBr
	HBjp2h/ECv8Z5/G15EONeRDuQNOmNKAxEARp9T5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805102c728-48a1c19f-9edd-425c-918e-59db28ce07ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3953c3a8abc576d64c89d074c520448a5aa33cd3526231bb93e20e3a32506113
Date: Fri, 22 Apr 2022 11:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650626578
