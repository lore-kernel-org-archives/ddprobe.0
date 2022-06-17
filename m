Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A37F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 01:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655428499;
	h=To:Subject:From:Message-Id:Date;
	bh=eOoA9Ehplyhqk4ksXYze6XPB8oTfyamAZaKE7EgBNqo=;
	b=EFPjUj5USDYKamjTh76LBVI2I/B9mNT4+YDYe78zSiUi/aZsDO5sIGaV3yLm+2rX
	bLDX72G0u5PNQjn6z+CjbsuKYkFk+25aUi2tylyfW/WwPH4rUUXEMlsIroRgs2Ppjls
	NwY8uuvU3ywBps+qtkuiKlsZz2n48Tc5KbzhUZqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655428499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eOoA9Ehplyhqk4ksXYze6XPB8oTfyamAZaKE7EgBNqo=;
	b=A0ZOPQyrMnf0iyor7PNLX5S5EBZ1lCX/VV8I+Ziuxr2kHqJxlqUscEycJlxaz1nt
	44kjZ28pxCCgdkJV8Tf6SQUw5MM6d+IVv+rrhB7fZNtGhKrwerhFRREdbp3XSUGWGA3
	V3m3PnW6xWs7oNMHEAINss3fMJKRRqSWSCLI+f90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f3a4739-d2d6ccf4-d5b8-4fa2-828b-8c9d02d4fcf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9e9da50fbfc857c66169633c152f84880595e757d508f58adf07e6892e158b7
Date: Fri, 17 Jun 2022 01:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655428499
