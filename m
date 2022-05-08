Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A454184D
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652025358;
	h=To:Subject:From:Message-Id:Date;
	bh=Xu2iq17IEgsEKz6L9bjhluVjG7H5vGcPWmm5kx1DEq0=;
	b=P1TlicHYTsbdkVvLHGNtoTYFhX2rOjbOCgj+fcrX4Y9wT4aDaA7EIHBjcDOl4GDW
	verBNyOxbWE+4kjEpL/RjDg1lg/ENTiOpmtWAKWkBwRfGzsp8xA61anjmkS5MIfa3ip
	ETOiEH+pu9BUOWSFIAhAkvXZkuFGzY3q/IxXNIXw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652025358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xu2iq17IEgsEKz6L9bjhluVjG7H5vGcPWmm5kx1DEq0=;
	b=Nxr0ja/nM8/2cvxSMj2ym8s3KcpwXe4nVhhnxaZkG1b4ZVzsBzOqcF5xz9TVbfgv
	g8h0ZwYi8MCDb+0ARb53Q/dHgCuhKnuS35RGIrkZ/gOb1OBz4RQ+TlXEPXjSngl8Ciq
	pNQRs3FTlMvYKTimKnMKgipYsMUg8CuEBX72bk20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a46277b8-ff2f5476-27d9-4beb-b17e-75f5e3bebb38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95dbc8f1755b1998ace08a583aab53d41529bc627ee0db8ec6f82c707e050f51
Date: Sun, 8 May 2022 15:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652025358
