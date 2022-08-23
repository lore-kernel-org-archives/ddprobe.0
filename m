Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442EB7F5
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661250652;
	h=To:Subject:From:Message-Id:Date;
	bh=c/p+TBCzzg0KEcXft/tEn7SuHJCbK+lWMdn9f0gKLbg=;
	b=jODMyQY6kWu2JqkEtsyGjIQoqLFkDwx9me7DoMv9mCmEgLI1m/bKnylWC35wNaKS
	B5GoiV7bqKh0j5SvZGfRNqPhXmNFHWcDdP/aUiIPyvYMx3nBwh0kr1/QRNHmYyl0C7J
	yZ2/P81JrUSgZMulKx35DV7As58fdAPsGIxtzcEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661250652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c/p+TBCzzg0KEcXft/tEn7SuHJCbK+lWMdn9f0gKLbg=;
	b=XsV/eyxwuC/zlgn7c0gXXXdmNqVvmizTkYvDmAbvskorcXaHQ/VtNLVfhmLIUKqm
	9gnkZQE+xP8ImyJ2R5y9pf9JlNQVZTBLK1q/fGBhyQgfsyI4KlbY8a293G8Achp6f0p
	5ldk+19oMKx4TsDWvJQQk+fMpRgPbVGWyVLNyQHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca4149b0-73a40986-c473-44d2-aa58-d05d72b4e446-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1df53e46559218b991abb483adbbdc50f5ea0aa3f5b6aa953a0ce9069b8411e7
Date: Tue, 23 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661250652
