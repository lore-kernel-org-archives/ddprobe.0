Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629E92F29
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661011252;
	h=To:Subject:From:Message-Id:Date;
	bh=FNKr9Ia/xM/KJgBLM2wCbaMRixlfRyhftTayuiKyKAY=;
	b=aAH0goTHw/pQK25eZkZzSnsS6z5Y74R7/0j68ee1q5G7wfNA2wWBz5pfdpbSP2NZ
	3OV4pdcidxRa3WxlVfkskq2BCRROz31zw7mBr09F5x+LAh2+oGGragEa6c5ciTUuEbB
	aZ+U/i5DavCZWzGocAEVZ7D8cFVNdq7GWh/W36HQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661011252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FNKr9Ia/xM/KJgBLM2wCbaMRixlfRyhftTayuiKyKAY=;
	b=UrBrbHI78QxPzJBkD9V72LkQdMa2YZG5tZF8ZlC+ZES4p45tT2ZD6HPB8xFRsQKC
	0SbJKccLX5qNVy/bHBxP6w2iH58gcxFiUVkpePXhTNf9QVh6zOx94m1Q60ihzLPq093
	PTFP310GA93vHFFrJnrJZKb7Uj+bBX46ULr35dBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bbfc5573-64f5dadc-2c29-42f1-b1fd-0e0ce851b53a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b21bdc177e48fff25bc9ff2bdbcbc9a488b1e9cec17766a25fa5bb4fee51c5ce
Date: Sat, 20 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661011252
