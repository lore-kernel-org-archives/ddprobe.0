Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEF34437
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656814012;
	h=To:Subject:From:Message-Id:Date;
	bh=+pfAtAnAFTklsYbwRsuX9ka0nQEAm3qN68Vj9dRnjxU=;
	b=Z1Cu+ehHYhkoLjtl6TH/Lu7oDu0M1O2w0sMpd4zw3C9oB1XOqMKnTW5GgStDAICJ
	/j3ltYLLmoOsZ5KLNt4W5ejaoTrFG7zmIDtygeRmSF6qqFgIdcA691Fr3lzqXmM00MK
	4HultEidOpQbX07sidnXEeIiuHqctEjcJZI/XeC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656814012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+pfAtAnAFTklsYbwRsuX9ka0nQEAm3qN68Vj9dRnjxU=;
	b=GgcPYG/lIOv1vLUx14r0EitlP6aZvUyCuGZ1+mYGJXPgLofYUmaNjGchSaGbKk4T
	lxLvMaW+V953b+OJomsPqQxsgyclyksy4Fwym3YmrOUsV8l3gplWw6/zV8Em/AJSsdy
	wM3aaOHRKasrXqlnPDZyHGYGwU30r8+9vv7wSpw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1cf8763-853b966d-9353-49b9-a908-b83dd1c03363-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a249943709880fce0d4601d5eb96237d3ff262c0c694851feab588e718d351a
Date: Sun, 3 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656814012
