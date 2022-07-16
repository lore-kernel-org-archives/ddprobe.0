Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E527A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657979812;
	h=To:Subject:From:Message-Id:Date;
	bh=P/0YAZvqVXCSGnRo3Ylk/DhT92RpZ8fJUe1xycvxZs4=;
	b=iDOOLu3pOtt5BrYggDNkXMZUbsr0tCJvmHSVcii+n/yCZH+LiQN6SuiI9QpxKxdh
	wi8jhuGECcvqofhd4vm9PtFiTsBojVQPktQ36vMUuXIWwS6Nusdk1MHAhMwGY1Mezsi
	/KmCeY/sb5b/JuQEIuy9JJWHv5ZRZOer7ApsoAPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657979812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P/0YAZvqVXCSGnRo3Ylk/DhT92RpZ8fJUe1xycvxZs4=;
	b=SlsbdBMOPxZpzfGM99h1CfbRKKMuQvWrbCYCFTR+8EtIcKnzW2ysqDXZRgCRuE9X
	vWCuV6Hp7g2yuEBZIYWJzAfUQRlFvExYygG5VtWvc8serFdXz+xbkhPzH1BpRWVYxHs
	XJOlKupXhaUbSUAR+j6bPr8sw/8oeEcgQ8q0o0As=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182074c39c6-15a276e9-558c-4882-b7b9-532c5482c222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b8824039b173b463839270c62be2e9217f9809d870d467b66e0982c932069d5
Date: Sat, 16 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657979812
