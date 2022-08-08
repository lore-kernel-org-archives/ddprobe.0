Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526E17C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659966052;
	h=To:Subject:From:Message-Id:Date;
	bh=3xMYIivb1yL7aeBTCjTHcu6DnrIpmJ9bKiBBqFwIpmQ=;
	b=HYCQ1GccX4aK6FxqH5DsIkbaPLeD9/vJ22spDIMRzi2GWSqopn+GsvVDIN7/5tZV
	txICUKzec6MVgfNsMpTK8d6nDue8ZWOL8/bzMjvVGlJ5DwJEXQwYzu+XhcOXiJxRqEZ
	5X4nlIHOw//XWD0Ju0eVnC3JxC7MNB831iHzSUEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659966052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3xMYIivb1yL7aeBTCjTHcu6DnrIpmJ9bKiBBqFwIpmQ=;
	b=PdCyiQjnqaTZVxOJUHxipSH32MuhSp7WReD2Fbdn1mxa1VmWzyRohXcXnMfQVAdZ
	9K165oV3OAQ7qnVQxduNa3xK/UyGQt0S1VLxg9frbek5XPOfr/abFIwuTf9JT7iJxHh
	RYpLJLZEGkSPcDlrehR11pGEPml3MXRbJgXJnh8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827dafd8d5-0728d0ce-972f-47d9-8ba3-d26b6e5d4cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4496416988062458144cfdc60c5006968325025b0a60d6caca3ca7432ff90bd2
Date: Mon, 8 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659966052
