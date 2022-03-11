Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630067E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646979384;
	h=To:Subject:From:Message-Id:Date;
	bh=RbYw6pdw+uZifNAxnqw6FCUyX1vE7ZHZxKfgut3TZFs=;
	b=KAHn4iOUiS3ES6knsV/xHklHCY/6/FOHycqtdZCX3r95xPr/LB5eBcurbBlJe4bz
	M7K2v9mTaOPNbGSVR+/L4Qksj4aHYwySu1T8cJUEw2QWiCM6h4vLv9ZKI8iRJV/GRyt
	hPzjN6HoaJRdBp7F+YxAp10vuH9TD7q5FrPVlZqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646979384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RbYw6pdw+uZifNAxnqw6FCUyX1vE7ZHZxKfgut3TZFs=;
	b=XKIAqn/WyA4mUx+yKByEZF0FofbS14WSRKzSKD78EM/NUV63qu/B60wawYCf1P3I
	4cBOyvzG58ZY9rzMduoqbGiVz2hnJ9/t/o4b0p4E+L5GiF2pZdoCpkZff9VQfD2gwq2
	ippkv40fan38g6s9O7DTwg3f5hzxnNGwOm4d9UuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f779f05c1-8163dccd-95c3-4a5c-8921-6df694568445-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be4240be471d0ff11a0ecd48045c7d32b8310d602a3aa806ddfbd5659114b935
Date: Fri, 11 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646979384
