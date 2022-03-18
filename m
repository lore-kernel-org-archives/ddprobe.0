Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2180D15AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647575485;
	h=To:Subject:From:Message-Id:Date;
	bh=kWk+4sDRIRd90hvxbkMThRvBOI/bqB/mNAQneoejS10=;
	b=SbWRw1h/roGuPBDaeFPORyWCnJfOniPbn5KYdwVcZwCti+mBpATt5C/P+OIaQ3s/
	vhEs2T7k297TCZpYZ/fgr1fTsyQg6wk3Cq0KnlVlpbgU+XEmCTkBvNBTSUi61QmL/pk
	pZ4y1QFfaYLlil54fIoXXJ3qkY5XT+GmvAwcQjdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647575485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kWk+4sDRIRd90hvxbkMThRvBOI/bqB/mNAQneoejS10=;
	b=Wrj27ziN1aZbLlFqHvVG6zkj66DZKb/Mik8ACMJnWordHxEklD1IUgYYn6tZjmzV
	UEL969I2yA9SyEl/tbwu3f9KGArQkqnnpS8K/onF0i6GA8Z1P7WtTRIBRs3pylj88y+
	MREC98JwFIzJ03UWiMuJ+mrFhRsvXFQeEQ+Nmgpc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b26c975-4054a478-019c-4f38-bece-1c7644f9d604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 786c20f3fb22d5a2db3013c632b3a33eaa80db40e985abd215d2240a54aab561
Date: Fri, 18 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647575484
