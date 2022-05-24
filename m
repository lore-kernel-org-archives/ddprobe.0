Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4C0810
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 13:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653397379;
	h=To:Subject:From:Message-Id:Date;
	bh=O36Voj+pUG6+zSAkuYqF4M4s725TXxwUcCaLHk0Hghg=;
	b=Ea9EIet5muwDJVgKBFDkJ3eyGhbn2+ytal3I3fwj1N5Bi/ci/L012n36Fgq9P1Gf
	uAqDAmOyPk3Rjg1mpEeVvY5Qmh2/ICpBAuww4ksocdzr0WFJm6J8Qoyd6DBq9WKELIa
	tJD8qG6OcNDqHRvOVuf0TvySy+3h2TEq6/WO6qu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653397379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O36Voj+pUG6+zSAkuYqF4M4s725TXxwUcCaLHk0Hghg=;
	b=dVrQqWLeZjnbzW76ciNmWvjQqIa33aovBfp+KTW8MmSnExJpp8TQrZ+zyUyuw0PO
	Pyv8HQqj0ify2FwaYt0PEhc5dn87H3O8xVpg1BUAYbvy8+pMDqJNdTDzk1A5zd4GbEg
	JXtXJjr/Qz0J8HFidTV47Gn1KeP1skfqxEyxrbnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f629d8b7-952bfb15-25df-4652-b820-1b5003d0e017-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e7a8472ebcbc34e82aa7fbc8249ed01db96d9ced5d3968dc92355229e8a0178
Date: Tue, 24 May 2022 13:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653397379
