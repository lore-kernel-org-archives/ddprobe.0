Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899DD643
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647845785;
	h=To:Subject:From:Message-Id:Date;
	bh=t56Lfs9Upzpfaovyk9gl5XmULo1HH/Qccm1M6iwf2xk=;
	b=Swwrxkv2uWbDQTo8bYw8fCDYkn2DZulnLZPtYhKyK0P7W+VQFgA5fgwmX0NdrG5E
	flDCZgo2UVc4kRNooJdeY4zp6JH8pY5dm0LPakjF+EPKb5WvSVcDkP/7rPTbwHvGv+s
	EZ20FzPO0hMOpC4353JRxx4O0CMeDJewcDrQawR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647845785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t56Lfs9Upzpfaovyk9gl5XmULo1HH/Qccm1M6iwf2xk=;
	b=gTSmSZ9CY6fDwFr4FrHqnjF4+RdHiQ00Ox7xc8FGQnqSUJbgL8oUdaRf5jB2AHIm
	Ebj6EA1Zh6NewgKljrbN7vDml+DF2THSctoJMoi8E5u+usLaNj6OcSNgL2eqeou2bo3
	Yqf0Rm/vgL/dr+aUxxZD3KlqNyrL6LSPGjTzZwAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab433c92-1792eb2b-ec83-4f5c-bf07-94d224ffe29e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db892ac07fb86ec9051e51cf95dc03db1c63dcea373b02d58a05b8f6e1c686c9
Date: Mon, 21 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647845784
