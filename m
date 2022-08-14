Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471C3EC5
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660476652;
	h=To:Subject:From:Message-Id:Date;
	bh=bIJ/6okg2OcHlBmVYb7aPGEsc0tXe7m0AYXSoQO5gb8=;
	b=WM9tf8n08/C6l7NA7YTTofFJiCdrvN+wyfvvLSJIyKCpjAYFMKK0olfEuaF7qJo4
	JWWCQJ6ntd/7ygWyTPLzbF/wqtje+ZFRDQbBNYrmiSd9KEmgPT0H/XEsbBzw7huKRw1
	iwwJS0CzRe+e19mvl8DmteuN8XiqAe3lHR3hCuso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660476652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bIJ/6okg2OcHlBmVYb7aPGEsc0tXe7m0AYXSoQO5gb8=;
	b=hSEP7bTiMsygSlKUpqygyBmNuriEbefgYQtWlXm/Bg6cvD0yoy79J5HAr8MAgV31
	CzHZBgJmh1MUM5rxCk8NiTZXLmBRdtIjtZlpUJ2sHqSUel81Ps6WyKgsI0BrrqiqYts
	Wkw4xplB0KUwTK6lRhHkTx6owxb0TsIH3PgWc6YM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c1efc14-479b518b-d8f4-4a53-bbb4-8ead6d1715b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c071aacb76cbb7dfd8bf272eae0b92c8644f7c199d2e3c29338879b281515ee3
Date: Sun, 14 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660476652
