Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A2C3C2B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657494412;
	h=To:Subject:From:Message-Id:Date;
	bh=v+MaqGitmv6SH6Z4nwzV0iwORghWaDRPl3gXoX3E8Js=;
	b=I0Bg5YRXKUQjkeA1VFY5aVLTumWvB2xsqVuUFUZGi3l5u5G5uywmnfybFiBUZbXc
	2s3bzJjrcqHKpOaUNJQ2yaywbvaJBRFtskXXctd2uU5DnqwEj+WKVv/S9olHFQ9qFkT
	/0Ph93JjmouM/rpke//HHR/s/h/QBx4zsnDca3AU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657494412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v+MaqGitmv6SH6Z4nwzV0iwORghWaDRPl3gXoX3E8Js=;
	b=bN6zfdLWLPLHy3o+jNF6eo/zsb/dh0efF6qHKlRKprGCE8JtLdGFGtLXV2MV6yKG
	COZNH2T2XbTSFPuYOzvwM2Wx0o1Op/OMZ0vKVho7HrddL7p5XuAl72tYNAyIuiyVAt6
	sftl3MJtEYM271sl75nBfpjGxMhdCxUgyg6pK9wI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea5d9bd8-a95fe83a-75d1-4182-be6e-119d9f437818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3d0839200d849d2097ce32e50c725baeface67196d7ed74562a2a9e895439ed
Date: Sun, 10 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657494412
