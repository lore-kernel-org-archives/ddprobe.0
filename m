Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F13336A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647860484;
	h=To:Subject:From:Message-Id:Date;
	bh=S7idp6zcTurZtYEaisvo4lizto++mm5G3l7lZEd9MVo=;
	b=NI613QX1+bN5PPWjFSpSnlM4PHn+kAyMVFGGEesLHws+KyaH8Pi+ljzy8QFvwnh8
	SN6xYy2sW/pAlcKRbqAw094nFDDLbLNeWI/+yNo4odTiNePQJe8dSYHIpBV6/OMm4Pk
	CNG2yZj0H92J5Zg0ufNQp1cG+BuNS5Bk76GVchfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647860484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S7idp6zcTurZtYEaisvo4lizto++mm5G3l7lZEd9MVo=;
	b=bLqOy41DcvZAtUOUzZhXDDMPVk2sUx0479sFb8VdTfoE6OQXR9Doq7oz3Iv4gIM+
	8LN4gbu9xyxN87dbjGk0yXr5mv70X/HOZpuR+/4uJOOvwzz7brSHZTxQVKEx5XZQ22q
	r/lPZUVjl5RKC49rwEQN4Kiq6Uzi2M22tenWVVzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac238a93-1e59a4df-2992-4704-a19b-907ec9c8c20a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b41bd4a27fc9690456666e5989444ebc7c2f403ec13cacc8062fa75f5c0ff72e
Date: Mon, 21 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647860484
