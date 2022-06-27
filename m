Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F472CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656335213;
	h=To:Subject:From:Message-Id:Date;
	bh=/1GarbEuWMqjnqUBdZ+ugiqvqyH6lwDhb3YBkMg10Pw=;
	b=I+dE1XBWd8gCHk+cI7usluR3WG6uq5QuOpBZXVbz6DKUQtcuNlrnZP204BpRZg/n
	lcXGpCz0JQJYr4OTXQBgGxbBRjKbTV+bEl03aUw/cSfGAchgW0IVuvaWXYcLkzHSnEt
	VXRNDZlK0eJ6CX8FZ0AHd/Ni+jWS/U3SZ4VxXl9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656335213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/1GarbEuWMqjnqUBdZ+ugiqvqyH6lwDhb3YBkMg10Pw=;
	b=dhxlP/d0h4238WooNyvAk6LO67ahIiHWusWdNfralA9TyNizOk0pjmy5oJUgdeeL
	nnzsc6Ys71oQRXoEWUaWekXDzmgDNpnrs9feaKaNZ3fDsHnV9SPfBN0uBkufybcxH1u
	mwmfaCs3recWnYVlKDX3njCncHqTEm1wrz2Zjtj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5459ef7-bcdb1786-a834-4383-99ed-e1da69472086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd38d405d931df11b717a5b93a93f119fc2a06f850a98d08465ae4d6ada759b4
Date: Mon, 27 Jun 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656335212
