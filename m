Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4B77A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646402484;
	h=To:Subject:From:Message-Id:Date;
	bh=ido0H1h0/WRk4fMAFQxHE9L+6EDm+WUbv8W0I/TLmJg=;
	b=lzcr3IfTcuEriUbMFWbk2QqxF62JC8mPB89Ell3Ls3VPpyH4Rd0fy5UdWmbudY0V
	rAyF1hmh5SGgbSRPBg96WkIiGGbZMk4LlBxKhjNQ+/DQlod6GDLKr8fvvgmYEu9ZpH1
	cSi+P09F1/X1i4DseLq3Myhd80ClWp6CoGfUEiwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646402484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ido0H1h0/WRk4fMAFQxHE9L+6EDm+WUbv8W0I/TLmJg=;
	b=Gthnzw3kOGNrGEV3k8b+oluKqkbjOTy5zYFRnFlrE2gX4bN3McPLc2Evmb7V9Lcu
	2YESZ+HJ8mhRulwDm7qMIPwRazl2m7o0uj7eOWNiEeszdzRZVCREZ+TgPglwgy1GjnU
	3jNKPxD/Tp02tte293l3e4uUI9YWYBdBMN+iOUxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f553c3a08-ff4b3794-7135-4ce4-9fa8-a07d154bc12a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd7eb95fe60416552f84ee1d00379be54654d4c729893b57fad47ac8bb32d15
Date: Fri, 4 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646402484
