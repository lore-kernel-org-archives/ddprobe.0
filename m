Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD217C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656247012;
	h=To:Subject:From:Message-Id:Date;
	bh=swaF3v8i+EKSv1qrF3C3myXI5svSTrgnawvjE3XyM3g=;
	b=A6Ns0yW0DEyfTJ8AEqHCpAFnYfqZkX2TY6oyft6jvvyhfSC5GJ8XKbbiYBO0tqXP
	KVcA8OtnAGotdN4tafl4kptIbEdiyzgCl7RsW5xyhFBs5DQ+u0c9eQI41sURPdgEArB
	sS2lbwz1rVyO6N/an0kzR3YWlW/D90sQTZU64KVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656247012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=swaF3v8i+EKSv1qrF3C3myXI5svSTrgnawvjE3XyM3g=;
	b=YKzE0KYoGxoQAkP1/p870IlJdw6bt93m0hACf6TCwOAJmCbIfBj94gKijQ432Z8/
	7jrxor+fjHSe/RhO/0WxWfPw4rJ64QXrlcsQZXCss0c7V/QEeIFfvEYbcMqpOE7y93f
	5n9wf5BxQR/Fb5AJvpB2cK8rkbIyLPmem21H48TE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a003cbaa-61e6b48f-f4b4-475b-a542-a0eaa71e0f82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 517a952a66baf5ca8304fef83b216aebdce86a2c0f0e59b2c7decb9ffe4a43b2
Date: Sun, 26 Jun 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656247012
