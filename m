Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA887C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657138612;
	h=To:Subject:From:Message-Id:Date;
	bh=a2mvJfKVqRs0W16e8EEkbxZhZTtBh8CWfBByFL7wyOg=;
	b=ZjiGWqMszJYJpiWxCBGioQ3THmbm8zlH1Q4Zy5Qq1IhdQGg5ou42Rlhxar8S+y1c
	fLzAj6apAUqRm4BCyY/2bBUjALJ6tBx/HWck0iuEr8zvYVRwZ7ctA2AAHrMgyQHuaxy
	fCNKZSeS8K303rsOEnPnf50cZ1bcs8mnaYM6qqSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657138612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2mvJfKVqRs0W16e8EEkbxZhZTtBh8CWfBByFL7wyOg=;
	b=Lgsr9QOthEo+rR5aitn5mYp3rVYuhZN89SihFKLn1dGIDxK7T4QCmWWkdEp2tr6a
	NoXxZokQwV47zAY+Tqp3bfwYsczBeqEX9vaEXyKVR9w/9DnYq0zqpw2eKR8h3MXcQ+q
	howvJ/li7KiS859Zl4HG3lzHHUa/M08wOSVAIdMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5288840-e2a59235-c819-4262-a3fd-bf685e7f19da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 414fcb0dbd6fa12c2e89cc18e3e067860c868bb72d99b15d9d27b20ad0720a1d
Date: Wed, 6 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657138612
