Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1932DA23
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 02:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650335938;
	h=To:Subject:From:Message-Id:Date;
	bh=QrW2LZlxP7kluDbLdtXDLEDdV8XZbYwA+Wa0gxiPlWQ=;
	b=M3G4RA6f6Lm88GiMSorID/PJ8T/TvtIX1j5Zs/59PZwxdkpYJVwDkSvLgIWD5Yiw
	m5rFKepq1KzbcW6JAd3TXLDJCYxgzDU75E2X6yHd6kI/eBqPK/gtP9pv8ym4e+odQ6/
	dwl3Q65nt29XNsrtsd5r53IyLKIjA1wsjOAVx4hA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650335938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QrW2LZlxP7kluDbLdtXDLEDdV8XZbYwA+Wa0gxiPlWQ=;
	b=DsSLYypxARlYwxp7mxVAF8i/YXBQLcuWCX1zFwLzStn4pI1/6q6nGUHe9SdEIJi3
	dWt1p11XG/a76ymrJ07lJPZQq9yfftU5nZoeN6d85xFGogNaPQBWqW9AIAH6MpORIuo
	4Gr82XYn6SR4H5YWMSjz2hBapaHOPr+kx6CjxRWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803faff6f5-bc03f6a2-79d0-4eee-b9f1-dc7e15cbe4b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79abc7d731616e8e219faa6f4af014c2219015ea03c557dc3405ba01b24a0b55
Date: Tue, 19 Apr 2022 02:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650335938
