Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608EF623
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 09:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650963658;
	h=To:Subject:From:Message-Id:Date;
	bh=9EIgV8o0auW6EB03KdJuETBU4XDdfKNJsSMoDLCmaeo=;
	b=F8wphu5ETWzZ/me8/8cWqdpx4TRD2sxCsQaL3alIpxzVQEKKqMENOj0n89/h0YLk
	5WR//o75VZ/4a+zgrItHf7j+IpoymxU+wB3K91K7dAHsVd0pyyCGoGMA2OJlqE8pYrc
	EwYzqVQrrHUeclLh+vlNtWNkWA4evjZsB2T6h7hI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650963658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9EIgV8o0auW6EB03KdJuETBU4XDdfKNJsSMoDLCmaeo=;
	b=N0TdWi7+aGb/fbkhHfyj1i2F4S2pNaip2ZtsS/HKE6n6NqjdVvh+8lidjPeBNxoi
	a/1upBNRvntTpweF4bop1VTyg7UwNEHxzLHiuXne5y4vSqsOIyU61hb6HN4NzA5NDeY
	pJx58t37ML4czpifF1tZpLLmSFq2EAOzzTCLsvto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180651a361d-f4241e41-cffe-47b0-86b1-d5e6c9371881-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c4e569d4841ad3943033a91520d4c1d5138b08b923317913cbfa46994e7182d
Date: Tue, 26 Apr 2022 09:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650963658
