Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAC023A6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 22:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649803858;
	h=To:Subject:From:Message-Id:Date;
	bh=8rdJRfDKhtR61C4qlEvDKg7oOPtmo5pnH3Bh9sF9G5A=;
	b=joQrxyGq7sOvvHoZiwTK+hqI4Qr7mZH3PSeO0GXc9sToLds2l9kYxiwBsnzt6Ylj
	U9A6R6wcd9mHkJzo++60RpnxU1xZGQfLetLb9MM2hWKhb2lAKHwyYbNVpdCo/aCur1n
	trPNofIrPIq9v0HB7qbrKseK9FWMIIDHBae3BRvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649803858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8rdJRfDKhtR61C4qlEvDKg7oOPtmo5pnH3Bh9sF9G5A=;
	b=O3aK6mk24b5tyxc2RGuQNjWcpQq22Q1E6VtYBRv3aE+55ejV5DtDYFEZnoSNPjY8
	zQrTZgjXfRlzgwpSXOPENkLg+aE+XSUfg/xVDya1EuMdh2aMIApYIiz6FOJ5JB3nDL/
	tFV5qJeffT54HQw1Q67LPI6As3RPMQbh4kLOZ03Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801ff911b5-dc874dd6-6351-4825-b8c4-f8ddc6488a9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aeb54a3052b283d5188ffce8df952ae05c41c98b056ab80c1a544a370c433331
Date: Tue, 12 Apr 2022 22:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649803858
