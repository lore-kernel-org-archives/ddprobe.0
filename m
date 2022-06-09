Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090493FF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654818719;
	h=To:Subject:From:Message-Id:Date;
	bh=nn1TFAmiHdjhd8ye0VEKufIXKu31cRfpfXxN1cXSLAk=;
	b=hXP2CBtf3ced44bfAY6QWpQ3PIRnDu66zX9qcUrASLhLYdEvIC7PhdlzYY/3xFBp
	UQQkpeQ7jP38WcLVuB+MNWIShDhEwlvEnIiGCztbXGQVWlWFXdL2zFOdyQZu6um0/ao
	s679zTa3K2esXTOPiwRa7T8l1aehlxF8jU2l2coo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654818719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nn1TFAmiHdjhd8ye0VEKufIXKu31cRfpfXxN1cXSLAk=;
	b=FDU3XOFMi3DhOEjqcbMUNWUC44Md4Ca6FXpxfekuXvth4vAqLMYCvRpAQEObaW0B
	GEwBpJw88nLUlxtFNUe+NgJhiaM4VHGLHEvUkdRMeotkVMsW5qeaDpDfuzeyY6HtiLx
	6qI70SMQyi6fntFZTWYslIqViLTh+TuB5hd6ciKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ae1c5fe-c6aa7a2b-faed-4956-ace4-3306e4bf113b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b0dd450e1ada47ff7ef23735dffb51989cd838ff5d82fd46219ed9453a9a1a4
Date: Thu, 9 Jun 2022 23:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654818719
