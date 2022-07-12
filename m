Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2140423A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657607212;
	h=To:Subject:From:Message-Id:Date;
	bh=2WZbx32ovTYXXkaYWy+69KKy4G+blAwjvDSsKeR1rhg=;
	b=DoYw1r0/smtOBYzlrrbqjloKGKeDZaUS/emzyNpfQohxES2/HyOli7VpmsDpDphH
	e8X9PZPx3yoYjUHLgAte7sfoRLxnHjXysiBk0p8A0idqggM0tUx39jhPf5WwzOXFrN7
	grSHWxM96bd/AqxgN3sOkpOzIag6ct0or5dEHcKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657607212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2WZbx32ovTYXXkaYWy+69KKy4G+blAwjvDSsKeR1rhg=;
	b=JiiBnYj+Hu80NiBRRlM+9z/KxnPueAqQEfxvLutiei6tCxagYTDlhbuOvW7BA4Tw
	c0paMb2Hf+P/UysvgMVTftkoAGyVAMWLcrn/XtuEGrlS6Eyyc0CbNdNIfcJREqncdWi
	P3ZfA9Oe1NVVtK8g8LUZ/5UzelGh4uy/+He/S+cc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f116cda1-43c1b380-7e30-455a-90dc-3770cb506691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a0ffe8cc726079148a3c1c983ae78a3acb74004870e4589b5495adc827ae0ca
Date: Tue, 12 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657607212
