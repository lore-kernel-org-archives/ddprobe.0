Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3499F7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 17:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651600798;
	h=To:Subject:From:Message-Id:Date;
	bh=OjwBBN31jvl1exH3ifUXam/FMRufenHZVuXmI8tCLJg=;
	b=WJNhQ8qUR66Vq1mEugVIOH2pyYEIg6iaeZw3DtgDdZScvbD8MogJ10jst9fZtmaX
	CruHeeBQ8sH4o3iMm8+LXHh3ueaaYzZ5FB+tjgEywBso2D9FhyJl3S1GACrBOUfZfEt
	HHJ5w1v2vAkhQfflgO6CVMA6+vMx1rmjKQt+xwX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651600798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OjwBBN31jvl1exH3ifUXam/FMRufenHZVuXmI8tCLJg=;
	b=e9/RAb4Jw2UIAZhp2eJcX4HzkBE/Zh0QxiEs0DY/aRiPb+5pvDA4XY6XbTwkPqqq
	m6ou4UzBwgxR3TtCSs8cj1V449C7R5Q8xtI5kIGA+TW2+1NMpJ2MZLCDBKIPeW/+ZWM
	Kg8GNQSi7zitJaeMFnTiTOaFEkNcxP+12ToVHI8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808b143234-719b4133-9239-40d4-8cca-4253ddcb1129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7822ba89a68dd8a40b2471a8277e87750769677fcf39a2beeaaa9bceba20f39
Date: Tue, 3 May 2022 17:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651600798
