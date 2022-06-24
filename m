Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B231FC8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656038212;
	h=To:Subject:From:Message-Id:Date;
	bh=uHCrIh4zbKFy9SMiUgALVnFbyoo+3ncqJDUAzZogVXw=;
	b=R5B0XpsRHSGlpjWYEhnHqhZDU5xCm9TBXJCQot/7G9272+D3iohXhkF/S7N6+cWC
	iDcH/XVO9ZCl1PZNZbbpQquOcigzvmz0G3GIl3k7oGq6zwMnoOOm0le0cDsWZ27VT29
	KOVrxzZZ9nHnQkHbQ4efLojFOElWJ4mIThYxWAQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656038212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uHCrIh4zbKFy9SMiUgALVnFbyoo+3ncqJDUAzZogVXw=;
	b=LytEpV+1sW+4w0fMQnpPhsudZxPaHsXHdYkjnlurFpSSDq0q23Y/DgxYPgZDdjzC
	derFywGKBv8+KQ/osqbUA6/G34ArdxFfqq2UBbVNrDSqaj698jRcbpNnyK82Nmbknr5
	c66+zX3zjXbBnj8InCN/j1sEMxwMfMNSg5wNjrnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819391c2e3-a564feab-5e74-4ec7-8e30-0c6e7e9a9d16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 932b2924dbdfae6d4653fa0a7b0090a163596b0349be5bd7a1b9eaf84d50a1cf
Date: Fri, 24 Jun 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656038212
