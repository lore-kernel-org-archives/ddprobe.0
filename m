Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BECA10F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647309084;
	h=To:Subject:From:Message-Id:Date;
	bh=/nlYlPv3gQq6A7G0B2s6ZjZryXiZZ768QLSqoBWloig=;
	b=atGnYcyd29+U5ZZg+VLUWqyNKXaeLtydRyWtNJdzIHuINL9xDCwj6XO/qlYdyMRk
	iQrftjhA05BquyAf8dQ78taU801BGVXQ3lspNMBQLRs/1Z2ls1s1ekE/aypfzvum37x
	KzWNN/qMlBqH4yaB9kbR+6zdAr8GG8bbGVpRlj9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647309084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/nlYlPv3gQq6A7G0B2s6ZjZryXiZZ768QLSqoBWloig=;
	b=jx3IGTzk6HsGzmIf8gWEdp6iCBnpBDtSseQbZz2qQY75PU+jPKsoR4wDhN5MDCwJ
	U5QyF3aHC7QYtD1YsBvW+MGIIe/EcBJ4u4Eq6d54nNj0sMBkEXfZfGtL8AlDgfvFdff
	dOLXJW9IFjMpHmgYSAj7DsbgAGFk69+eXUvcAVAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b45d88a-9098ad1a-d962-428f-b299-16c5535f4c35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00ef36798fae10173c5b767a83dcb45eddf96a2e72856bea6e44bf7ca50822dd
Date: Tue, 15 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647309084
