Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8017A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 18:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644690634;
	h=To:Subject:From:Message-Id:Date;
	bh=QcddjM857vtaf6t3O0cMIKAfYvu74QgP7UtiyKOxdzk=;
	b=Ey39NhWln9yxoufNlaKag8xevY8XQHGOZRkGcXYsby2GPSey+fROB9j5cIAXPJsN
	HOKmc0bZGAgono1BCgVY0npaCfcGhqVsIOHvlnuUH0DVXi5FgOljP1kgKaCKunNRMvl
	tym+ujDF1Nfa3bSobZ7pFT9qmUYeWj0YroY0FtIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644690634;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QcddjM857vtaf6t3O0cMIKAfYvu74QgP7UtiyKOxdzk=;
	b=dioToOAXiteaz832EZH5pXQX1mAhUuDlOb4+Ie19elb4z5FSU3QsFRjgLX4GL9A0
	ro+YVRtYL2xjZpUEqvx/GeTjy+WNgsjGrrkOobpyJlYLHRngUyw3S7dSWDdcNMJZy4J
	TQ19KaSQmEbXmNvQRkix5qR5k0+5ObUl3+W6mECs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef3377ea-ef694867-4149-4108-827f-5117f95b022d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9795f7f23a76f7526d22daaa80c15f1b965b1524b1481925d67e972b4dcab33
Date: Sat, 12 Feb 2022 18:30:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644690634
