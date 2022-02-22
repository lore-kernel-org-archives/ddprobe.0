Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875F97E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645489584;
	h=To:Subject:From:Message-Id:Date;
	bh=F/OdEgVqPkD5DEXlWn63tHgAjTC+MsRVTDLkFd0eAlk=;
	b=BCdlC45/2ovt8fF/2SGpxxciQphn/RaplBVbZG31pkePLT8cN7oa2YlxKYCQqAES
	AiX4molQOwgGvgSiTsgifObZfsIRnJP80Wy6tJFkUYrxyatC4ukyN8h5qr5oDJvAmUp
	Bf541hGrhIEDH8bRrwMy87ncki08IZ6DuNwGYJJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645489584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F/OdEgVqPkD5DEXlWn63tHgAjTC+MsRVTDLkFd0eAlk=;
	b=Wv93ly3KaqdpXuSQDrT0tHUe+1h/3kyEqU3t+XhnFEL4rYvXF6jajy4pU56+Yuqr
	HBIEf2se9n0gW0GS4pHqyzhVps0PhzyyDktIbR/KHfnH6reIjdiQC3++KmxfXrUqOCa
	CS3GoU/HsSvsLGk0iAWexh4j/wP9N6JUbJKbG3lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ed27a93-d2ebd997-f1c6-4f1b-b6d3-127413e3c738-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb2235cf4647e89aaf25debd6bbfdfc420e532d3d7cbbf005f56a7dbb13b4f30
Date: Tue, 22 Feb 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645489584
