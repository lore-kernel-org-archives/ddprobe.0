Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA234C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647616585;
	h=To:Subject:From:Message-Id:Date;
	bh=Sihy8DqPeYpJTXnibl/dm/YXFkZN2UIX+lkl7rTmr9s=;
	b=T2cX04h5OQZEmik/dUED20NuBRTnYEWXjIsdC9tfuQV9b2Mw8/CZXR0wUEhbFPk6
	RuP/JQD1EP5yR/BHhcekibSBlbdOuBCvroyvkzR2gLzkJeRbwTSEDlEFHU2dgvHGLDZ
	Wa3iihUC6hD3QfVnIoH0sv33aDqASqzH65YB5lX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647616585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sihy8DqPeYpJTXnibl/dm/YXFkZN2UIX+lkl7rTmr9s=;
	b=gPyg35jKzeEs48Wbs8qwdRmXMNTDB7LVndZKQoKlSct4h27/ktc2lnPOH2mXiAft
	3XuPzrAz7jHM6kcdpji4JbPrgTtod3L9zLk1Z83XibSULYwf9csvjx34vrJ8G8JYKX2
	41/Pdva3mqp+WlnEQ2D0d9OqohuvwSl3NuG5jgZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d99ec4d-5f4d8216-c57b-49af-9a36-adb73f668718-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dfd0b5e76b5f3c7bd42a4cda19155834db2c9d140a4cf84c3e131326f89b942
Date: Fri, 18 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647616584
