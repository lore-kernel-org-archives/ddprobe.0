Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99438258C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 19:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648583758;
	h=To:Subject:From:Message-Id:Date;
	bh=/XbZ8Pj3L9fMZ0BbvJ5c6Xyc1HRaGUOgbsIx7/m4is4=;
	b=mEXcOH55cTfUquYgjrZTg4csWwozHOfgj6WbGcs5OSpN1mQXACslUL0SYYCPiORL
	UUmLk1et9ea6fvQaAE0sIogGo+jHfEC0PC82C8LG1fEVd4P5k5CFsUj/QLJiRAo+cNp
	uvSs7FIjbcnJsTnq8e/5MgNlnR1McET8V2C964S0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648583758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/XbZ8Pj3L9fMZ0BbvJ5c6Xyc1HRaGUOgbsIx7/m4is4=;
	b=hqUvyExjU1qfUUY+0TrIH7BmmkH2Xnd8P5FFzhdsDf2aKNAWzPEAjJkl9tqIB0Hm
	2F8RiseXlNJAQBiS3v7ZBaaO20LGPqeZ94+Pp0qlCC+D06znZsUHqfLwVaOHfRXTiXw
	cpRLeph6jrrBJW3XExQhkpOjkDiU0MXeGMYOwdIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd73fd1a0-c8258df0-d685-4d61-b6c3-178c540690f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6d61608959d1be687523822c38ca38de235da23e1079b416946a3b3da86cb43
Date: Tue, 29 Mar 2022 19:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648583758
