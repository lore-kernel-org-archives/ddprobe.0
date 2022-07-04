Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC467E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656913012;
	h=To:Subject:From:Message-Id:Date;
	bh=FklmTWX4hrm88MHO8Sj0Rv3QUyACt0I54ElrP0V6MUM=;
	b=ivPa73e7jQFwUzQvoIGNwJnm8DfG5ta5hXatzWAFqhb9CTS+WFVi6dd3Mg9MDtue
	m9SGpbMvKO3DtCKxisT3QhcUaJvqKQb7/Q2SThDL6dvqxtrjQkQNRuj3aEa+7nYgWzO
	hYWPi4Vd7tUTyIinvOps5By3wBdzT+1Wyu7QTZUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656913012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FklmTWX4hrm88MHO8Sj0Rv3QUyACt0I54ElrP0V6MUM=;
	b=ecWfM0y39mLoEedAc/0VuZFDXvSKFvfoXEWrIHbo++/v++1CZDOUQQcwE7ATFNG+
	GRHGWhAm+NngNtW+BTOFfUanB12ZdHq8A4du+MZYObW10P4+EFkxjQ4VJCSaxMN55Ju
	X/AMMDrGvZTsQ9rW/+Jfh8q9q4knkeqzRbA9BTrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7b62625-9a0f744a-900b-4b32-8030-0a6998b8035c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2340972fdb96c611a18ce76019426284b36b124895d1a7e1ebe8f7fae4e4289
Date: Mon, 4 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656913012
