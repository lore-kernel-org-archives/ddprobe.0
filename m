Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6F4A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647944485;
	h=To:Subject:From:Message-Id:Date;
	bh=OD+CAS+J9iz0Q6RaOa4LbuZS9cJnOuH8+WkrX8qJWtw=;
	b=HxrAnpauMF+EpAVqZDNkzBuJF4pjdqdOWyYzLorPZIH015GbZTScszmZo4ONrHNg
	eiW6cdoqpx1BeXPXoX9f7Q6ZOVsU+zX6cAAmkZ1b1yJEvUEwncGXtrKzM43DRd4iICV
	BWJGHWoyCTP/95VHWAfrUkACPDbrq0H1TQsiKq20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647944485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OD+CAS+J9iz0Q6RaOa4LbuZS9cJnOuH8+WkrX8qJWtw=;
	b=k7fL5HiMXJbjsP+unWFyOCCpYBA2FkMk8F3kE/96pL9eVZ6Uv15ivbYpUE3P17FV
	yx6CQ3V7ZppYj9G7AkuSbS5G/wmbdEzKYqVgchf4ZbKtaZsu82WZ7i6Q7FgJB44SJbc
	vhhUjKMWbtDtfVWqOSZP42Uhbc8wRQ6rRaJbjuzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb12547b5-0fc56769-bf90-4a3c-ad61-cff6d21d74eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f0e83fb13d937da773df735e5c6c507e3d43b31814f1d408659517967706328
Date: Tue, 22 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647944484
