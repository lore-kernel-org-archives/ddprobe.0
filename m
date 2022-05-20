Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25BA7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 22:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653085919;
	h=To:Subject:From:Message-Id:Date;
	bh=N+FIX+No8F+/iHHhZUjGLybA88+0mRRMKStAowRAkOk=;
	b=k2gAVrmDLBJsJIrmCaMKPjhESS90no0N4Q8V0+u9nqW7eyWKxI48jWE6v5uF4WrL
	r/2hFuPK+X59zROxmxbJhBLONksmwm+ArsHXm9w4R9sAsKw2LWgehnJTAtJElYCRZ/W
	8er901lPQfi7yolWaWKirTFkWgQrLljtprc13JGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653085919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+FIX+No8F+/iHHhZUjGLybA88+0mRRMKStAowRAkOk=;
	b=igGWQGxVy1xGJQUTnczODgFUnDt2GC4DF8jnNXHB4kN3iMiRF4xCJJnWsQdcDGHX
	JjpZxXTqGrZA9Vpz6tLwj6tyKy5LBan3ecLdOOrBhck/Bd9Xupc+s+RyhXB7TNqIO2P
	pOJIvmDfQUilL3XUsxXnm84wtSH03wWKA0LIY/uE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3995838-451cb0a2-ea30-4206-bdd0-5739ed0a8b0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 237dcbc397d715b0d01b3452cb950bafac1f4bd5b41535968d18b168dcd61809
Date: Fri, 20 May 2022 22:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653085919
