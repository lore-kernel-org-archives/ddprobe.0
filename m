Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018157E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658594212;
	h=To:Subject:From:Message-Id:Date;
	bh=YkprmzpWUARq4jIBEuQ/sj8yzIFRxJ+PQY39yLGRiQI=;
	b=ZR4KwQ3pszFulBM2nq/rP9Xp9LfFqVCZXJ6+Q9q81+UKrAHXT4aXFI2BWSjG0/X0
	ztpiPesu/Q58dsfQEAPqRxHcRzsZlfSMt7QIG3pljcXSbHZiunMveZFKaL2BuZIMaFI
	lK312D5Odgc3Z6ZSRGVho+lBE+oOgvi8sDI7h6MM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658594212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YkprmzpWUARq4jIBEuQ/sj8yzIFRxJ+PQY39yLGRiQI=;
	b=f94jqyOL9aKQ+DkCg9Gs9x00TqfFRsFCvDi9laLb3Hb5CDsw1ImHg1HTlcXWr2EL
	0wfJklyU+b5AaGCpimIFJbzRBsdf/lU2C5bGllVcSiScKroqjqaFMwB4nveu13cZxFr
	WKfLL9moAlxnZNeV+o+EKGbzI6RSM4lSHppQPANU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822beb39aa-7309281b-8781-47ac-b58c-629810ec1c8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7caef4a68dc7bd1d9113edf0d74685c6c5de20326c421daa87a03c06c3b422c3
Date: Sat, 23 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658594212
