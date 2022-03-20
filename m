Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A28B33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647780984;
	h=To:Subject:From:Message-Id:Date;
	bh=H5Re4L6hy1XWHi08Uoqr8513lqLwFCPTBbTj0AKVtL8=;
	b=ifdtutiWKQL77RFlNgbRB8xUnpkRWoRYsKP7OSz5Kafs+OwPy0T+c43Gde0e0X1T
	6jKMFhlnaEAjW0cfolmI1d00AqXLJ6suDR6uEi6W+4aEA0xXWe5bo8LPws6kMYZVMTN
	myA44MG82E0AqMEbhAk4umThKQaXaR7v1+ByCFyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647780984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H5Re4L6hy1XWHi08Uoqr8513lqLwFCPTBbTj0AKVtL8=;
	b=cMMKkw1yGIwHPbKCv7NoNvBcELGRtXwj4EQfUwBWJ0k7X3X8TQl+AHH4SW86TupG
	JTGgUF22RvleAW9yc4CEG7gLjIJde3uqo2++fkWMFrvOV/HK1IQDcEjXlPRxf8rSSao
	cVLMES3S+hAVDBDWUJrHemmJNgNbvGEQ5LnPZc70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa766779c-44777a54-8138-4713-b6ed-793006bda6f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8614b9d78edcb68f45b1cbe13a25de1b3479c9c04f9442955122c1b894568aac
Date: Sun, 20 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647780984
