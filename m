Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073CA1FC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 20:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654547699;
	h=To:Subject:From:Message-Id:Date;
	bh=3VYv4XOp1atTY39wnJLH8FTAFQR6vKLuucCkO0r7Wfk=;
	b=FGNoKFWw1mOShZ09tvLFvtZy5QcB7joVDiFBS33cdHtdqrR9m7JRHaH3177hwJcv
	XL5ysXUx11YgiBuayK4bZOH3k8/JybszjHM/P2RRtfhAhc1cH11gKjbWzB1xZ1hT+3A
	fif37VfXMWzl+CsKWCxlsuP4N5EF1Nn48/QaLzms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654547699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3VYv4XOp1atTY39wnJLH8FTAFQR6vKLuucCkO0r7Wfk=;
	b=J3uDwTFDOoiBF3sIMK6tR3BIvT4Zax/6W7DPatgchkG6GH5RO2JRLXA4n1F2GaOZ
	jfYpljFmY287S5EHdM5Ug7roNkC01DinBq7E62unKY0MOj/YzoUsx2ZZhi+YhUQJVQE
	pQG6hY6k/53PY6IuIODdKCD/rPNuIDL4vkqm7fc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813aba562b-afffb4d9-8a87-4638-ba37-83bbb837afab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de2cfd6ac149ae81e3586039eb0defc034ffa03c09e219b77531917cc1bda3f6
Date: Mon, 6 Jun 2022 20:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654547699
