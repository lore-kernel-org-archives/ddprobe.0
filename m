Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179321FB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647344185;
	h=To:Subject:From:Message-Id:Date;
	bh=v9tauTWMw/mwMuzSCBnHUNVhqWn6LsqvJpNwfM41xh8=;
	b=I4tFC+4lfzCmqlBXnv0jj9+d9xeFegI7nxWb9F2JDpDZb4vlrNulwoqLcX4AyfKm
	MC0ihzLSjSAjkpjY1qploqSPT4ug/pQj6YNnXflUtWrEID9n+J4oYGi6UGRwBkqD52L
	N5bRDiteC0HyuUNBK43WKQlQRuhBv5ZGM0zMkDDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647344185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v9tauTWMw/mwMuzSCBnHUNVhqWn6LsqvJpNwfM41xh8=;
	b=BRAo6tFdAGMfzvQCh/tCZcIWxIWRCqlaQHHoW7UGi+SmYTILpFj9NTWt/EDiKSCo
	cKd/DydJAuVlMOgdam2tNN1htrpJ6rKfUlUyqxCpHOe++atXJVD2lALsKx1hv7onryx
	+vJpFQkuERip10douhbKOtSB6oDkDF6+8ufxe2TM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d5d6e16-3c13ac73-7ec1-46ba-a710-c88317641a71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80f56666a7814d85fecac807a28269cef56ed102327fab07e5271ddafb664050
Date: Tue, 15 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647344184
