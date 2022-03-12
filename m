Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE6A39F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647088284;
	h=To:Subject:From:Message-Id:Date;
	bh=VgkZtU9iqThxR4ZX49IXycv85Gcxx7UCll1Oje+1f8M=;
	b=iw3H0RXsrxrBxI4YE4cPPZyL0IPystCD4RIyDY2Z6aAy2FoY1Y1cYoFEFF8vo9lv
	ovmtLWd9odCQ1QSbCNkG7TsVkmJmQqHhsQQZ3o3nf4VoTD9XD5QR43sZSXUq/vGqnUA
	7Jr8KlzV9Tk/bIKsefd2pfJXXW73X+/jy8rm+M9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647088284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VgkZtU9iqThxR4ZX49IXycv85Gcxx7UCll1Oje+1f8M=;
	b=Jhm7cmfJhNsdN3nfaRvNQairNFHgobjqsPK2iJ7B1wsAf905pUqtTTqTNfSmb7CP
	V8dsmCuDfQaRm9gnqOnfg0uvuH19+D5WCtzS/zW4Y6iQTbuGvOmXsFIKvrbOjm9DT0v
	vgs2R5zCGxVCpytYDfCAG2hiaCxBlt2NK9bGjld4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e1cb44e-a0cde168-f825-4f5e-b808-b2933d769a79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68db8e46b6a2f9dab1bc6fc765de6c99d285a45ba34d30399f6a4069b1b91862
Date: Sat, 12 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647088284
