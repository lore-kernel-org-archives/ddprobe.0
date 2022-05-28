Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E787B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 00:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653697739;
	h=To:Subject:From:Message-Id:Date;
	bh=QA+M1SSTLATDcyK4XefzCbImKe4CkoTv6Ua8X9mQDS4=;
	b=WbKXhsKW1Z8o8XCx9rXrpO41UPlvXhal3zwmwxdUbNmBYmNVjNeuyUl3RvqVeEYL
	WLd6fgajD3i/JgXSfdTvcLn1o7ys+wykq7SDfUurIrivpn3o6VxlfwRBKsqcM3Pl5EH
	GhgixrwpfRhkTxbVLEmhSJOUIF7bV79nhUEcXXpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653697739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QA+M1SSTLATDcyK4XefzCbImKe4CkoTv6Ua8X9mQDS4=;
	b=CAyldmAESWcRS+AsU270ItW8voc+rfiNHQ3AR8AddNXCI/gMddD4mrHJYN4LoNyT
	pMJJAPRktG7IFbJvRBn6RcaOS0U6g8jWUylzxlO5GBM73BE94HVLSOx6McrkK0+55bW
	9G0DvHRCGqOUUxxi56iCQxo8XCLmoxFA7AAMMA3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810810fa48-0758c86a-4d9c-47f6-81ef-de6cca6461d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f06600f8fb8af7a3916f9f2cfc6949ca9588a8236041cd69b24b1a4d852f5fd5
Date: Sat, 28 May 2022 00:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653697739
