Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9F87B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 17:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650994858;
	h=To:Subject:From:Message-Id:Date;
	bh=PM6oHNWHqq8OKJHDCmQR3+YMbinQ3FQRGG/tItqeCts=;
	b=TfDFEeL6TUlJUz9rIvNEV8TidgRCdYKBB+McaFFBKXQWB4CXfWinAofCNi5jRmRN
	rBXWcPaDGLsChw9KCgLQ3nbOeOnRzYumOx5Pp5OtfwuvP/MlmQZxDJd9uHaWwTjpvRQ
	ASQWrODrXIO0AXhlBKCXgsPHs2pxWkw46SRW59eY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650994858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PM6oHNWHqq8OKJHDCmQR3+YMbinQ3FQRGG/tItqeCts=;
	b=MXZ1AcQ8XLZCDQwGYs08lcRVczWZwSGt2oMyHeMEh9TFt/XL5vW0HkatgcusUw4n
	4xBSjpaB0feG9v4RtmfLyXy9pI7Hm1RuO01Fp2Wr4ul6NZgr8NpIL0CWQ/tNRCibHu7
	BCLX0mjEi1/+QnoxPTLuqz8mSOaR3wKjOsd52qEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066f6490f-386d2943-2712-4bcd-a050-8561921a6229-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e6997840494e8872d07f3923b1c11e4bf86549c74ba727fe81ee04f7ddefa45
Date: Tue, 26 Apr 2022 17:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650994858
