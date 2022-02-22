Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD64966A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645546585;
	h=To:Subject:From:Message-Id:Date;
	bh=8TuVgOs+ifW7P5yV47+bJ1JYbH+Sr1i58NnT6YyiwiQ=;
	b=AtdAtMTGfrAqF8R02iTSi5zRWNJX1HeWSKuSKDZnMUqfmfoOZzjZVbb7Uj8p+kEh
	WBJ5mv5Y2aASakn5Y2juJuMFhzW/mpbxuBfdNdurSnwqlAuZKSPSzYC3y7eZWfuj+b5
	OxymJ2av+xQCCn274eCFUzx7aDqF21zwrqTyY7L8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645546585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8TuVgOs+ifW7P5yV47+bJ1JYbH+Sr1i58NnT6YyiwiQ=;
	b=RORk9YQfDZQRc5Fsglg2LfxUYHAk5E6mWYvQEGZv0OdW+kb+MTT6IkNtnILxxCGN
	uWySYeGTH5DyrXFu3uDVdiVDX6VfGClnPRcL6RUjyYhdiOaaX/8T0S+4PhYHpG0dhPZ
	9suzi2x1Hkg8YU9MCXwt66jH0uvTo7oZ/WfqCa1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22383ad9-62e73af3-29e1-434b-a52b-129fabaf928f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08f770100308214d6037ed8e9c555db4038a521a7b63d7a666bbd7489b59161c
Date: Tue, 22 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645546584
