Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41182F59
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657408612;
	h=To:Subject:From:Message-Id:Date;
	bh=rD2tA45xQco/CQeekJmUHJRfG34SE8FtiEWF37BjAog=;
	b=Vf8FaDh4J9fFBTsQovZANM+HkNZ1wlN+SQB9YcuCk4RLX0lf1R+x6XVvzSByohSh
	8aQOrkhNIFcEPH9z6dgYWK8doWKdlegVqceyo3UHd3n/FJ2OSXUlXsXkdBRmpc/fniT
	04WVoZGd1QKc/gKjMW8ZUjdPaFDnPg4ke5KmExO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657408612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rD2tA45xQco/CQeekJmUHJRfG34SE8FtiEWF37BjAog=;
	b=eOWJEVbfaWUoMARDJ6ymzo3wOJVNbnGmWrBRblPaEOxgICg7+HUSI8tM6crbFTtC
	HHac+O3B2QL0FxhsONRraRMtAHFdQrphTCU7MwCcam4Mvp30z/pYMXoSNUiGC87kNIo
	XWVqsEBaDvw6guW+9/0TFMujufJeKdwpFfCKyw38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e54067b1-eb51dc9e-85ae-4351-b8b7-a6d24a1c9e7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd1babd01baa7bab75821981deb342885c5c78fea63e345951e745730c7b6a26
Date: Sat, 9 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657408612
