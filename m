Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F0217C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 10:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648375678;
	h=To:Subject:From:Message-Id:Date;
	bh=MEbDMdf4KUIsXDVh7UrrrebwgMRvOAWps4f6Ly5fRCQ=;
	b=kOsn+WYqUosg9atMFPfLoFPwT+HDmZq5HJE/85huC3WKDT5Pomy195n8WEPzW2Ig
	dzBMZmx2v2EEP/GQ84GDSXNRdvHl8c3T0d/IYrTBkFjYz7I9ZgDdXHdafhGTwpztpMU
	swCBwTluapcHPRJPflZ/980jZ1Rz0XQ8+lzBNhqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648375678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MEbDMdf4KUIsXDVh7UrrrebwgMRvOAWps4f6Ly5fRCQ=;
	b=dV0abqmzPe2fPEefb1p/woLOID4ifScDiBGzIVSWPBbyk5wRSaczgm0/uIQL6oPi
	BahT1tAlsXtSr++2zddz42MDrCvnBQs3yzjBYfewQwVPlapyv5hRo92OOdnaxAONzGW
	3sfOVZx7Lus379QRpfZOlqlMh/KMF7MrKttm2KLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcad8c538-b85d8216-7a9d-4fb5-aeb8-f20e68599e2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d55f9939a1047d41289ee3b7638c697a8dc25e84eebd8c93680a6087bccc9b38
Date: Sun, 27 Mar 2022 10:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648375678
