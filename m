Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB2129A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645536685;
	h=To:Subject:From:Message-Id:Date;
	bh=Mf7H70gqd3L67F8VDuzEb6TP7hYA9eVnGGtoQ8W8qOE=;
	b=WDkC0ImILAGFVB2K/Ds2WK3qM95XAZbkgXSPcuhulDru8qt8L4y/uMxKkSR0E/AF
	tGfJC0Ux09hJGU+zWHY5qkGa61t51IrUq23PbhBd61v5956LCjAm+QMd7hVoaYi2Alw
	TzYdeACNpmJ1zY9RfkbwmkdTnNF8D+YzD/KUgHl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645536685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mf7H70gqd3L67F8VDuzEb6TP7hYA9eVnGGtoQ8W8qOE=;
	b=Sex0BfO9YXPpuvJ2GR3up5Vc1IVr6L1d1JF4YjNVYLzzomcAaN1hA/eBWLKhrxPG
	1Y8opDlrCzEKLXG1p7N54wG+1QFDGsdIQFkzQCNp7tsnWz6spa+4nvr6/Sp8/gS05TT
	a/qDQKqZA+DldPo8geqhRnMd1fQiDsrUnKW4n/Lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21a12ac4-79200952-ac37-4edc-9cb2-69cc6b9b0739-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2960256e061e67307749b4386ee479ce3ef985d381a9d15c1af4512b386a3501
Date: Tue, 22 Feb 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645536684
