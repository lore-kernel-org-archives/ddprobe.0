Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEBD1B64
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644962784;
	h=To:Subject:From:Message-Id:Date;
	bh=WPonfbF+eVExrKkCYdng2VxQA8/cxAuN1CnjMZJuhw4=;
	b=C+sA01WY2IRazRTkKNwCi0X8+hos8RATsB4AoDzDg+IEs5iQGxFpA1F3ADArDLFD
	glodlrubTKTvmoSzkN4pWAbRivXnstgM1iSLEG6A7SI/doicJwSRt7Sc6DiEkyjRqIm
	BmFFkN7QmPDBQasbXGfagN7ed0dsC/ocof9PxUDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644962784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WPonfbF+eVExrKkCYdng2VxQA8/cxAuN1CnjMZJuhw4=;
	b=AKjlqTM1xDi4mMYN6inphoTXRcRYuIan76CCZVilcWoDDjFDdHh225AHTQXeje5f
	8onqIx26aLwgzeZXwc40+uXiTcUxL8VBqtb+YUi/fdTr08ZGRmofeHRY0iNH75SV++t
	TaA4wjR+X29L6q92WvGYdXDXIfYqny6R1Gcf2ISo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff6c25fc-33dd16a2-b82a-4fbc-a861-0fd4dc15e5bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aea34cc519d91d2fc3017e4d840f4e7519db1e3c7a9fe3d087b122cba66c0a8c
Date: Tue, 15 Feb 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644962784
