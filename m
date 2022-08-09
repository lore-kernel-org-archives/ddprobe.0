Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EBC23C2
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660029052;
	h=To:Subject:From:Message-Id:Date;
	bh=hLttC2x+KAlHLv1dShhrnO9MEekCoGPXQlBM/wojscg=;
	b=HW87q48/YSrYlrRoc/ytQSTwXK2bFutb2JGJARv+FqO8+FxsT66yBscVcz1sGSUu
	+YxmnAZhVtJGPoaMbVy79IjvWYu4L4gEexTndYHfvvUCv+XiNKVzaofEhvxrZbMCWpg
	DfPgn4sYVL4R6sAKowOl2+6GJBrDU3EF++TAzHNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660029052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hLttC2x+KAlHLv1dShhrnO9MEekCoGPXQlBM/wojscg=;
	b=SmKRSqjLDkt9qF41ZiS0HX7wy+Menn2Ba2ks17qTuDzrNAJ0fBmHEGXIl6fFxYvS
	f3zV0d2SHMzSPdQkGDoIbQfjBBYI8QAZ5SZvtGqqslmS20gDasSNx1gPrTIRS9/jjXq
	J7rQQTyJ72N6Nr6QJ0rCeXXq34XG9JngYgDFbk5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182817126c7-7068630b-6c39-4b0c-be77-312c17cb89cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 706e003e7b4eb5eac2f349d9201cc1c4db0cba2e51b323ac67c7b99862a76dc8
Date: Tue, 9 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660029052
