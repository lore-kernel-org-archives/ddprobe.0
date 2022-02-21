Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC3F20E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645413985;
	h=To:Subject:From:Message-Id:Date;
	bh=QSlxOKW+ZeDJbkz+lZj1ddR1XZ2g+L5p92vK1zLa8ic=;
	b=lH2hcJvv431YMtOnXW3oAQeGEaqA5v5TBlm+f2dWCXhjXv3O8C2lJeU3kzWHhW6q
	Ih2ptZpPg14ihwyZZLUQtd6Sz2LzUHpX7c5VCnQYeHM3MdK9ju0rgkf+o5h+jyz/Sy1
	o3M1hTRpgSCxU0/hpyzeNqOpUwrCzYUbutLueUl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645413985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QSlxOKW+ZeDJbkz+lZj1ddR1XZ2g+L5p92vK1zLa8ic=;
	b=djd3I646jVcaF1bWbtvT8XE9UA7Wm+smIgSEQFPbYkX15sOv4a5Pq7Lnke1ZUlRL
	39C0TKJ+NpqOuukVmdhhfMKdjj76ACvgBYz+RfN7DjpKHd/KXYw/itFV2MyCVE88K+T
	/z9/slVwD5eyTHoVfWi3dNMaeCLXkCrnRNyrXJFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a50e9fd-904a4f00-b64e-40a6-b94e-b1acde393c09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0755a39c899d65bff4e0a3a72cfc84111a341e4107f343c1c49289e2ec96abc
Date: Mon, 21 Feb 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645413984
